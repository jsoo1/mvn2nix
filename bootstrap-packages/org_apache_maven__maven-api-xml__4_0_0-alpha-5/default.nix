{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
, org_apache_maven__maven-api__pom__4_0_0-alpha-5
, org_apache_maven__maven__pom__4_0_0-alpha-5
, org_apache_maven__maven-api-meta__4_0_0-alpha-5
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven:maven-api-xml:4.0.0-alpha-5";
  groupId = "org.apache.maven";
  artifactId = "maven-api-xml";
  version = "4.0.0-alpha-5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-api-xml/4.0.0-alpha-5/maven-api-xml-4.0.0-alpha-5.jar";
        sha256 = "e34556a7abe2509194942cceb9ba25587f16f5964ff160102fe4926f67e38951";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-api-xml/4.0.0-alpha-5/maven-api-xml-4.0.0-alpha-5.pom";
        sha256 = "e235a9e6848c9fd6246b735c4abd6b0ecf4df67b5e07ead9a2bb976c3b62ad60";
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
      drv = org_apache_maven__maven-api-meta__4_0_0-alpha-5;
      scope = "compile";
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
