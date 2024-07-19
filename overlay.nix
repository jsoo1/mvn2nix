self: super: {
  mvn2nix = self.callPackage ./derivation.nix {
    jdk = self.jdk17_headless;
  };

  mvn2nix-bootstrap = self.callPackage ./derivation.nix {
    bootstrap = true;
    jdk = self.jdk17_headless;
  };

  buildMavenRepository =
    (self.callPackage ./maven.nix { }).buildMavenRepository;

  buildMavenRepositoryFromLockFile =
    (self.callPackage ./maven.nix { }).buildMavenRepositoryFromLockFile;
}
