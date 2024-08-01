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
    passthru.mkMavenRepository = dependencies:
      let
        walk = drv: self.symlinkJoin {
          name = "${drv.name}-maven-repository-join";
          paths = map (d: walk d.drv) drv.dependencies ++ [ subd drv ];
        };

        subd = drv: self.linkFarm "${drv.name}-maven-repository"
          (map (a: { name = self.mvn2nix.lib.mavenPath drv a.extension; path = a.drv; })
            drv.artifacts);
      in
      self.symlinkJoin {
        name = "maven-repository";
        paths = map walk dependencies;
      };

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
