{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__30_1-jre
}:
patchMavenJar {
  name = "com.google.guava:guava:pom:30.1-jre";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "30.1-jre";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/30.1-jre/guava-30.1-jre.pom";
      sha256 = "9646d4cd50094d4abe507e555d3f76d77e34a4c5566b22fb130ef55d4ebbe927";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__30_1-jre;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
