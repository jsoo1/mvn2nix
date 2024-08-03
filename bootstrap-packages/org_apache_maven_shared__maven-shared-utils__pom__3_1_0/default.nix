{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__30
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:pom:3.1.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.1.0/maven-shared-utils-3.1.0.pom";
      sha256 = "68f9fdef85d2c89f53c63cbc559920e0115bd30eb6f7076c9854931d3829027b";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
