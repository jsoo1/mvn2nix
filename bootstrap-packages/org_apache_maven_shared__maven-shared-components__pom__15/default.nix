{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__7
, org_apache_maven__maven-parent__pom__16
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:15";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "15";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/15/maven-shared-components-15.pom";
        sha256 = "6a58eb24291600f75ce0fe369b73fe6700f575ace4b664724d3cd0a6b85b63ee";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__7;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
