{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-logging-api__jar__1_11_1
, org_codehaus_plexus__plexus-container-default__jar__2_1_0
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_codehaus_plexus__plexus-classworlds__jar__2_6_0
, org_apache_xbean__xbean-reflect__jar__3_7
, com_google_collections__google-collections__jar__1_0
, org_apache_maven_doxia__doxia-sink-api__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-sink-api";
  coordinates = "org.apache.maven.doxia:doxia-sink-api:jar:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.11.1/doxia-sink-api-1.11.1.jar";
      sha256 = "39ac38bb7d752ea003be17a0065522e4e1b076a4f7e374bea55259f3e133f28f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_11_1;
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
      drv = org_apache_maven_doxia__doxia-sink-api__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
