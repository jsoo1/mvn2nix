{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.checkerframework:checker-qual:3.42.0";
  groupId = "org.checkerframework";
  artifactId = "checker-qual";
  version = "3.42.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/checkerframework/checker-qual/3.42.0/checker-qual-3.42.0.jar";
        sha256 = "ccaedd33af0b7894d9f2f3b644f4d19e43928e32902e61ac4d10777830f5aac7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/checkerframework/checker-qual/3.42.0/checker-qual-3.42.0.pom";
        sha256 = "bf5fcaab272f54cbcf1bbe77c3bd963c821c9abad2058708bf0bed3c875494ca";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
