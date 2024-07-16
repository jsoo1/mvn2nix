self: super: {
  mvn2nix = self.callPackage ./derivation.nix {
    jdk = super.jdk16_headless;
  };

  mvn2nix-bootstrap = self.callPackage ./derivation.nix {
    bootstrap = true;
    jdk = super.jdk16_headless;
  };

  buildMavenRepository =
    (self.callPackage ./maven.nix { }).buildMavenRepository;

  buildMavenRepositoryFromLockFile =
    (self.callPackage ./maven.nix { }).buildMavenRepositoryFromLockFile;
}
