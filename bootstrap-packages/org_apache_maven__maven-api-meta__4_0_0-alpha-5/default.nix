{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
, org_apache_maven__maven-api__pom__4_0_0-alpha-5
, org_apache_maven__maven__pom__4_0_0-alpha-5
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven:maven-api-meta:4.0.0-alpha-5";
  groupId = "org.apache.maven";
  artifactId = "maven-api-meta";
  version = "4.0.0-alpha-5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-api-meta/4.0.0-alpha-5/maven-api-meta-4.0.0-alpha-5.jar";
        sha256 = "768895e11ad37abc8e92c1dcf6ee52ac81af80d47a3d608ccd5863d7d4dd14b2";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-api-meta/4.0.0-alpha-5/maven-api-meta-4.0.0-alpha-5.pom";
        sha256 = "64a06510ea0abb00136cb3a04394a25a0bb3b4ff37e677400938d6028c6d5b9e";
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
      drv = org_apache_maven__maven-api__pom__4_0_0-alpha-5;
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
