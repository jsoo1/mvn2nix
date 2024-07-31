self: super: {
  mvn2nix = (self.callPackage ./derivation.nix {
    jdk = self.jdk17_headless;
  }).overrideAttrs (o: {
    passthru.lib = self.callPackage ./lib.nix { };
  });

  mvn2nix-bootstrap = self.callPackage ./derivation.nix {
    bootstrap = true;
    jdk = self.jdk17_headless;
  };

  patchMavenJar = self.callPackage ./patch-maven-jar.nix { };

  buildMavenRepository =
    (self.callPackage ./maven.nix { }).buildMavenRepository;

  buildMavenRepositoryFromLockFile =
    (self.callPackage ./maven.nix { }).buildMavenRepositoryFromLockFile;
}
