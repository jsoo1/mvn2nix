{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__21
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:pom:3.0.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.0.0/maven-shared-utils-3.0.0.pom";
      sha256 = "948e8e116200325886eff501d39355b0bee1526d699f2bd6b227c18f5e35cdf4";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__21;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
