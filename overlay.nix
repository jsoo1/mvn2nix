self: super: {
  mvn2nix =
    let
      buildMavenPackage = self.callPackage ./build-support/build-maven-package.nix { };

      # Make a maven repository from `patchMavenJar.drv`s
      #
      # mkMavenRepository : [ patchMavenJar.drv ] -> drv
      mkMavenRepository = dependencies:
        let
          # TODO(jsoo1): Use evalConfig?

          # go : attrs drv -> { drv: patchMavenJar.drv; ... } -> attrs drv
          go = seen: { drv, ... }:
            self.lib.foldl' visit (cons drv seen) drv.dependencies;

          # visit : attrs drv -> { drv: patchMavenJar.drv; ... } -> attrs drv
          visit = seen: x:
            if seen ? ${x.drv.coordinates}
            then seen
            else go (cons x.drv seen) x;

          # mkFarm : attrs drv -> patchMavenJar.drv -> attrs drv
          cons = drv: seen:
            { ${drv.coordinates} = drv.maven-repository; } // seen;
        in
        self.symlinkJoin {
          name = "maven-repository";
          paths = self.lib.attrValues (self.lib.foldl' visit { } dependencies);
        };

      bootstrapPackages = importPackageSet ./bootstrap-packages;

      # Import a package set from the output directory created by:
      #
      # `mvn2nix --output-type NIX --output-dir <dir>`
      # importPackageSet : path -> attrs
      importPackageSet = dir: self.lib.makeScope self.newScope (final:
        let
          directory = builtins.readDir dir;

          maybeCall = name: type: self.lib.optionalAttrs (type == "directory") {
            ${name} = final.callPackage (dir + "/${name}") { };
          };
        in
        { inherit patchMavenJar; }
        // self.lib.concatMapAttrs maybeCall directory
      );

      patchMavenJar = self.callPackage ./build-support/patch-maven-jar.nix { };
    in
    (self.callPackage ./derivation.nix {
      jre = self.jre_headless;
      codegen = bootstrapPackages.callPackage ./generated.nix {
        inherit buildMavenPackage;
      };
    }).overrideAttrs (o: {
      passthru = o.passthru // {
        inherit
          bootstrapPackages
          patchMavenJar
          importPackageSet
          buildMavenPackage
          mkMavenRepository
          ;

        lib = self.callPackage ./lib.nix { };

        shell = self.mkShell {
          name = "mvn2nix-shell";

          inputsFrom = [ self.mvn2nix ];

          nativeBuildInputs = [
            self.rlwrap # very handy for jdb
            self.java-language-server
          ];
        };
      };
    });

  mvn2nix-bootstrap =
    builtins.trace "the mvn2nix-bootstrap package is no longer different from `mvn2nix`"
      self.mvn2nix;

  buildMavenRepository =
    (self.callPackage ./maven.nix { }).buildMavenRepository;

  buildMavenRepositoryFromLockFile =
    (self.callPackage ./maven.nix { }).buildMavenRepositoryFromLockFile;
}
