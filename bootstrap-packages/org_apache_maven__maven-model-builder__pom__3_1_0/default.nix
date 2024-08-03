{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.1.0/maven-model-builder-3.1.0.pom";
      sha256 = "1533ecbc2adcf1facbcd7ae969e78a79d50c9d14257b74aa09e2fd542619280a";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
