{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__33
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-artifact-transfer:pom:0.11.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-artifact-transfer";
  version = "0.11.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.11.0/maven-artifact-transfer-0.11.0.pom";
      sha256 = "18cb9370815a5bd8002208fd8e51a53abee7eb056f3ae90fee9f276a4e4d909e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__33;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
