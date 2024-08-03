{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__jar__1_1
, org_apache_maven_doxia__doxia-logging-api__jar__1_1
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, classworlds__classworlds__jar__1_1
, org_apache_maven_reporting__maven-reporting-api__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven.reporting:maven-reporting-api:jar:2.2.1";
  groupId = "org.apache.maven.reporting";
  artifactId = "maven-reporting-api";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/reporting/maven-reporting-api/2.2.1/maven-reporting-api-2.2.1.jar";
      sha256 = "7339e0e8cf04574e9ce484713385888ca6ac6adc578a60a8e311261537df8c77";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-api__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
