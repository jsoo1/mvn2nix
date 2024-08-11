{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-logging-api__jar__1_12_0
, org_codehaus_plexus__plexus-container-default__jar__2_1_0
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_codehaus_plexus__plexus-classworlds__jar__2_6_0
, org_apache_xbean__xbean-reflect__jar__3_7
, com_google_collections__google-collections__jar__1_0
, org_apache_maven_doxia__doxia-sink-api__pom__1_12_0
}:
patchMavenJar {
  name = "doxia-sink-api";
  coordinates = "org.apache.maven.doxia:doxia-sink-api:jar:1.12.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.12.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.jar";
      sha256 = "5dca6aaaa9e70d8a0766e143ddcf9db09de5fde0fbcc78cb635d74e764dfcca5";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_6_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__jar__3_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_collections__google-collections__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__pom__1_12_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
