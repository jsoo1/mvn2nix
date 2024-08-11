{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_reporting__maven-reporting-api__jar__3_0
, org_apache_maven_doxia__doxia-sink-api__jar__1_11_1
, commons-io__commons-io__jar__2_6
, org_apache_maven__maven-artifact__jar__2_2_1
, org_apache_maven__maven-model__jar__2_2_1
, org_apache_maven__maven-plugin-api__jar__2_2_1
, org_apache_maven_doxia__doxia-logging-api__jar__1_11_1
, org_apache_maven_doxia__doxia-decoration-model__jar__1_11_1
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9
, junit__junit__jar__4_13_2
, org_hamcrest__hamcrest-core__jar__1_3
, classworlds__classworlds__jar__1_1-alpha-2
, org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_codehaus_plexus__plexus-component-annotations__jar__2_0_0
, org_codehaus_plexus__plexus-interpolation__jar__1_26
, org_apache_maven_doxia__doxia-integration-tools__pom__1_11_1
}:
patchMavenJar {
  name = "doxia-integration-tools";
  coordinates = "org.apache.maven.doxia:doxia-integration-tools:jar:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-integration-tools";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-integration-tools/1.11.1/doxia-integration-tools-1.11.1.jar";
      sha256 = "eee789dcb86f37f290c6c22198ea56bf529edf21590294e549a77a490ed21dbe";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_reporting__maven-reporting-api__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-decoration-model__jar__1_11_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__4_13_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_hamcrest__hamcrest-core__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-i18n__jar__1_0-beta-10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_26;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-integration-tools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
