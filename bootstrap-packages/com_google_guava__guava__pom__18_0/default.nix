{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__18_0
}:
patchMavenJar {
  name = "com.google.guava:guava:pom:18.0";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "18.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/18.0/guava-18.0.pom";
      sha256 = "e743d61d76f76b5dc060d6f7914fdd41c4418b3529062556920116a716719836";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__18_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
