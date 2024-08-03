{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__11_0_2
}:
patchMavenJar {
  name = "com.google.guava:guava:pom:11.0.2";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "11.0.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/11.0.2/guava-11.0.2.pom";
      sha256 = "dade5f381a729bbc6a4e2f8d0832888f946fd3c294e05fc30bd200718ecf4c73";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__11_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
