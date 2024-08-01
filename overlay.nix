self: super: {
  mvn2nix = (self.callPackage ./derivation.nix {
    jdk = self.jdk17_headless;
  }).overrideAttrs (o: {
    passthru.lib = self.callPackage ./lib.nix { };

    passthru.patchMavenJar = self.callPackage ./patch-maven-jar.nix { };

    # Import a package set from the output directory created by:
    #
    # `mvn2nix --output-type NIX --output-dir <dir>`
    # importPackageSet : path -> attrs
    passthru.importPackageSet = dir: self.lib.makeScope self.newScope (final:
      let
        directory = builtins.readDir dir;

        maybeCall = name: type: self.lib.optionalAttrs (type == "directory") {
          ${name} = final.callPackage (dir + "/${name}") { };
        };
      in
      { inherit (self.mvn2nix.passthru) patchMavenJar; }
      // self.lib.concatMapAttrs maybeCall directory
    );

    # Make a maven repository from `patchMavenJar.drv`s
    #
    # mkMavenRepository : [ patchMavenJar.drv ] -> drv
    passthru.mkMavenRepository = classpath:
      let # The path in a maven repository in a patchMavenJar.drv raw output
        # given an extension.
        #
        # mavenPaths : patchMavenJar.drv -> str -> str
        mavenPath = d: extension:
          let
            group = self.lib.concatStringsSep "/" (self.lib.splitString "." d.groupId);
          in
          "${group}/${d.artifactId}/${d.version}/" + self.mvn2nix.lib.filename d extension;
      in
      self.linkFarm "maven-repository"
        (self.lib.concatMap
          (d: map (r: { name = mavenPath d.drv r.extension; path = r.drv; }) d.drv.artifacts)
          classpath);

    passthru.shell = self.mkShell {
      name = "mvn2nix-shell";

      inputsFrom = [ self.mvn2nix ];

      nativeBuildInputs = [
        self.rlwrap # very handy for jdb
        self.java-language-server
        self.metals
      ];
    };

    passthru.bootstrapPackages = self.mvn2nix.importPackageSet ./bootstrap-packages;
  });

  mvn2nix-bootstrap =
    builtins.trace "the mvn2nix-bootstrap package is no longer different from `mvn2nix`"
      self.mvn2nix;

  buildMavenRepository =
    (self.callPackage ./maven.nix { }).buildMavenRepository;

  buildMavenRepositoryFromLockFile =
    (self.callPackage ./maven.nix { }).buildMavenRepositoryFromLockFile;
}
