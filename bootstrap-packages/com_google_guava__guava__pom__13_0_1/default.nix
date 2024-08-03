{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__13_0_1
}:
patchMavenJar {
  name = "com.google.guava:guava:pom:13.0.1";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "13.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/13.0.1/guava-13.0.1.pom";
      sha256 = "5007012b96a3c47e0ee1196523529cf8b861ce52412bd1da2796544847696bbc";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__13_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
