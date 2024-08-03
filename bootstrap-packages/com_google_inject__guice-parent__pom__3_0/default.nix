{
  lib
, pkgs
, patchMavenJar
, com_google__google__pom__5
}:
patchMavenJar {
  name = "com.google.inject:guice-parent:pom:3.0";
  groupId = "com.google.inject";
  artifactId = "guice-parent";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/inject/guice-parent/3.0/guice-parent-3.0.pom";
      sha256 = "5c6e38c35984e55033498fc22d1519b2501c36abf089fd445081491f6fcce91a";
    };
  };
  dependencies = [
    {
      drv = com_google__google__pom__5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
