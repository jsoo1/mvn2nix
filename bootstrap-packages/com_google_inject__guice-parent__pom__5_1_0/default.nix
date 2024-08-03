{
  lib
, pkgs
, patchMavenJar
, com_google__google__pom__5
}:
patchMavenJar {
  name = "com.google.inject:guice-parent:pom:5.1.0";
  groupId = "com.google.inject";
  artifactId = "guice-parent";
  version = "5.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/inject/guice-parent/5.1.0/guice-parent-5.1.0.pom";
      sha256 = "63d5c0c641797deba6c051c47d5f6923f3a103ef71e4ebc3a85d01c3e878596c";
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
