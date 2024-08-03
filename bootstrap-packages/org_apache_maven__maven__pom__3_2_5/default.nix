{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__25
}:
patchMavenJar {
  name = "org.apache.maven:maven:pom:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven/3.2.5/maven-3.2.5.pom";
      sha256 = "75f8135d0a9ae8d63c3553f2eaefe25f1b0a01d7676e07f561835b95a88aedf5";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__25;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
