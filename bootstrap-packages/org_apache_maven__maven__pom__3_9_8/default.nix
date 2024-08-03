{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven-parent__pom__42
}:
patchMavenJar {
  name = "org.apache.maven:maven:pom:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven/3.9.8/maven-3.9.8.pom";
      sha256 = "0703e9c7a9f802eb779bbe2aff742f94f6f3d0ba837c4b7be589eb50ee0d767d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
