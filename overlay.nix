self: super: {
  mvn2nix = (self.callPackage ./derivation.nix {
    jdk = self.jdk17_headless;
  }).overrideAttrs (o: {
    passthru.lib = self.callPackage ./lib.nix { };

    passthru.patchMavenJar = self.callPackage ./patch-maven-jar.nix { };

    passthru.buildMavenPackage = self.callPackage ./build-maven-package.nix { };

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
        # TODO(jsoo1): Use evalConfig?

        # go : attrs drv -> { drv: patchMavenJar.drv; ... } -> attrs drv
        go = seen: { drv, ... }:
          self.lib.foldl' visit (cons drv seen) drv.dependencies;

        # visit : attrs drv -> { drv: patchMavenJar.drv; ... } -> attrs drv
        visit = seen: x:
          if seen ? ${x.drv.name}
          then seen
          else go (cons x.drv seen) x;

        # mkFarm : attrs drv -> patchMavenJar.drv -> attrs drv
        cons = drv: seen:
          { ${drv.name} = drv.maven-repository; } // seen;
      in
      self.symlinkJoin {
        name = "maven-repository";
        paths = self.lib.attrValues (self.lib.foldl' visit { } dependencies);
      };

    passthru.shell = self.mkShell {
      name = "mvn2nix-shell";

      inputsFrom = [ self.mvn2nix ];

      nativeBuildInputs = [
        self.rlwrap # very handy for jdb
        self.java-language-server
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
