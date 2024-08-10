{
  lib
, pkgs
, patchMavenJar
, org_assertj__assertj-bom__pom__3_25_3
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven_shared__maven-shared-components__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-dependency-analyzer:pom:1.14.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-dependency-analyzer";
  version = "1.14.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-analyzer/1.14.1/maven-dependency-analyzer-1.14.1.pom";
      sha256 = "a9aa56c2a17b1b56c33ca829196e354771168e27b9c36beff26aeb46e5d38d26";
    };
  };
  dependencies = [
    {
      drv = org_assertj__assertj-bom__pom__3_25_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
