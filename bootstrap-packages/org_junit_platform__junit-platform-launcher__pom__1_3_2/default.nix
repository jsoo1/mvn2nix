{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-launcher:pom:1.3.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-launcher";
  version = "1.3.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-launcher/1.3.2/junit-platform-launcher-1.3.2.pom";
      sha256 = "142fa015b552ff3d17bc5a66bafbff189c493b302dad74b02f1ac17440553624";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
