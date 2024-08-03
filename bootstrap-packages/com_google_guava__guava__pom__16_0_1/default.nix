{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__16_0_1
}:
patchMavenJar {
  name = "com.google.guava:guava:pom:16.0.1";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "16.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/16.0.1/guava-16.0.1.pom";
      sha256 = "c676575845fc8ad6dcfeca0827f405066a140f5fa5434715598179c8ba1c0817";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__16_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
