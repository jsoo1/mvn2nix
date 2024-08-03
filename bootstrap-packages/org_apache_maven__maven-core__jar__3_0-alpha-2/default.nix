{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-lifecycle__jar__3_0-alpha-2
, org_apache_maven__maven-reporting-api__jar__3_0-alpha-2
, org_apache_maven_doxia__doxia-sink-api__jar__1_0-alpha-9
, org_apache_maven__maven-model__jar__3_0-alpha-2
, org_apache_maven__maven-compat__jar__3_0-alpha-2
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-4
, org_apache_maven__maven-plugin-api__jar__3_0-alpha-2
, org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_5
, org_apache_xbean__xbean-reflect__jar__3_4
, log4j__log4j__jar__1_2_12
, commons-logging__commons-logging-api__jar__1_1
, com_google_code_google-collections__google-collect__jar__snapshot-20080530
, junit__junit__jar__3_8_2
, org_apache_maven__maven-project__jar__3_0-alpha-2
, org_codehaus_woodstox__wstx-asl__jar__3_2_6
, org_apache_maven__maven-project-builder__jar__3_0-alpha-2
, commons-cli__commons-cli__jar__1_0
, org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-6
, org_codehaus_plexus__plexus-interpolation__jar__1_1
, org_codehaus_plexus__plexus-utils__jar__1_5_6
, org_codehaus_plexus__plexus-classworlds__jar__1_3
, org_codehaus_plexus__plexus-component-annotations__jar__1_0-beta-3_0_5
, org_sonatype_plexus__plexus-plugin-manager__jar__1_0-alpha-1
, org_apache_maven_mercury__mercury-plexus__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-remote-m2__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-transport-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-crypto-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-transport-http__jar__1_0_0-alpha-2
, org_mortbay_jetty__jetty-client__jar__6_1_12
, org_mortbay_jetty__jetty-sslengine__jar__6_1_12
, org_mortbay_jetty__jetty__jar__6_1_12
, org_mortbay_jetty__jetty-util__jar__6_1_12
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_12
, org_apache_maven_mercury__mercury-crypto-basic__jar__1_0_0-alpha-2
, bouncycastle__bcprov-jdk15__jar__140
, bouncycastle__bcpg-jdk15__jar__140
, org_apache_maven_mercury__mercury-md-shared__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-util__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-local-m2__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-virtual__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-cache-fs__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-md-sat__jar__1_0_0-alpha-2
, org_sat4j__org_sat4j_core__jar__2_0_4
, org_sat4j__org_sat4j_pb__jar__2_0_4
, org_apache_maven_mercury__mercury-event__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-logging__jar__1_0_0-alpha-2
, org_codehaus_plexus__plexus-lang__jar__1_1
, org_slf4j__slf4j-jdk14__jar__1_5_3
, org_slf4j__slf4j-api__jar__1_5_3
, org_apache_maven__maven-mercury__jar__3_0-alpha-2
, org_apache_maven_mercury__mercury-artifact__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-external__jar__1_0_0-alpha-2
, org_sonatype_spice__model-builder__jar__1_3
, stax__stax-api__jar__1_0_1
, org_apache_maven__maven-core__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:jar:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/3.0-alpha-2/maven-core-3.0-alpha-2.jar";
      sha256 = "0d87abc79e6fb87cc9091aabb3dbe4dccc23743c02a61fb7e40d4db77e93c278";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-lifecycle__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-reporting-api__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_0-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-compat__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__jar__3_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = log4j__log4j__jar__1_2_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_google-collections__google-collect__jar__snapshot-20080530;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_woodstox__wstx-asl__jar__3_2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project-builder__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-cli__commons-cli__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_0-beta-3_0_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-plugin-manager__jar__1_0-alpha-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-plexus__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-remote-m2__jar__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-api__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-transport-api__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-crypto-api__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-transport-http__jar__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-client__jar__6_1_12;
      scope = "test";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-sslengine__jar__6_1_12;
      scope = "test";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty__jar__6_1_12;
      scope = "test";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-util__jar__6_1_12;
      scope = "test";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__servlet-api-2_5__jar__6_1_12;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-crypto-basic__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = bouncycastle__bcprov-jdk15__jar__140;
      scope = "compile";
      optional = false;
    }
    {
      drv = bouncycastle__bcpg-jdk15__jar__140;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-md-shared__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-util__jar__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-local-m2__jar__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-virtual__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-cache-fs__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-md-sat__jar__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sat4j__org_sat4j_core__jar__2_0_4;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sat4j__org_sat4j_pb__jar__2_0_4;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-event__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-logging__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-lang__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-jdk14__jar__1_5_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_5_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-mercury__jar__3_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-artifact__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-external__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_spice__model-builder__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = stax__stax-api__jar__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
