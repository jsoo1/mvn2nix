{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
, org_apache_maven__maven__pom__4_0_0-alpha-5
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven:maven-api:pom:4.0.0-alpha-5";
  groupId = "org.apache.maven";
  artifactId = "maven-api";
  version = "4.0.0-alpha-5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-api/4.0.0-alpha-5/maven-api-4.0.0-alpha-5.pom";
        sha256 = "e3680f6fbdcef877e94b37eec75e8452a92a83856d5a3568989682bba9920467";
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
      drv = org_apache_maven__maven__pom__4_0_0-alpha-5;
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
