{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__33_2_1-jre
}:
patchMavenJar {
  name = "com.google.guava:guava:pom:33.2.1-jre";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "33.2.1-jre";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/33.2.1-jre/guava-33.2.1-jre.pom";
      sha256 = "42817bdc1c0c8c737d6b411cfaf4a84769e7d271e879b016fd0850248a06dab5";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__33_2_1-jre;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
