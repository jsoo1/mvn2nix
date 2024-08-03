{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-logging-api__jar__1_1
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-30
, org_codehaus_plexus__plexus-utils__jar__1_5_7
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9
, junit__junit__jar__3_8_1
, org_apache_maven_doxia__doxia-sink-api__pom__1_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:jar:1.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.1/doxia-sink-api-1.1.jar";
      sha256 = "c59e706156064a6a02444212b16cec3f3403bd626f124223abeaaf8f66447e92";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
