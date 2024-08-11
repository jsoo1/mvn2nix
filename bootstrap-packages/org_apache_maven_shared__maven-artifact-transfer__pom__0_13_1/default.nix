{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__34
}:
patchMavenJar {
  name = "maven-artifact-transfer";
  coordinates = "org.apache.maven.shared:maven-artifact-transfer:pom:0.13.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-artifact-transfer";
  version = "0.13.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.13.1/maven-artifact-transfer-0.13.1.pom";
      sha256 = "e4b15a1e7cfbfe480408cfbaa148d66ea3324bf19e9ac6d6c17053bdb18ac4cd";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
