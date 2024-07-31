{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__33_2_1-jre
}:
patchMavenJar {
  name = "com.google.guava:guava:33.2.1-jre";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "33.2.1-jre";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/33.2.1-jre/guava-33.2.1-jre.jar";
        sha256 = "452b2d9787b7d366fa8cf5ed9a1c40404542d05effa7a598da03bbbbb76d9f31";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/33.2.1-jre/guava-33.2.1-jre.pom";
        sha256 = "42817bdc1c0c8c737d6b411cfaf4a84769e7d271e879b016fd0850248a06dab5";
      };
    }
  ];
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
