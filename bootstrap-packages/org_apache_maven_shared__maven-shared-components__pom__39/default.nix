{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:39";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "39";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/39/maven-shared-components-39.pom";
        sha256 = "17e81388d88ba61c4055450ec90a32ee30acd07f46dc6e31e096b8e53735f4b2";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
