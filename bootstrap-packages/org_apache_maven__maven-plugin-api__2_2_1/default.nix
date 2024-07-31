{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
, org_apache__apache__pom__5
, org_apache_maven__maven-parent__pom__11
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/2.2.1/maven-plugin-api-2.2.1.jar";
        sha256 = "72a47a963563009c5e8b851491ced3f63e2d276b862bde1f9d10d53abac5b22f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/2.2.1/maven-plugin-api-2.2.1.pom";
        sha256 = "c10d0460c2d5c5076304598965991d6257d1bf31bdef921a17ce3d059bce654e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
