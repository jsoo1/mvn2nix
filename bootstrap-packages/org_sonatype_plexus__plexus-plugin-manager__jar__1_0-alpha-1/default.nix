{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_1
, org_codehaus_plexus__plexus-utils__jar__1_5_5
, org_apache_xbean__xbean-reflect__jar__3_4
, com_google_code_google-collections__google-collect__jar__snapshot-20080530
, junit__junit__jar__4_5
, org_apache_maven_mercury__mercury-plexus__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-remote-m2__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-artifact__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-transport-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-crypto-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-external__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-transport-http__jar__1_0_0-alpha-2
, org_mortbay_jetty__jetty-client__jar__6_1_14
, org_mortbay_jetty__jetty-sslengine__jar__6_1_14
, org_mortbay_jetty__jetty__jar__6_1_14
, org_mortbay_jetty__jetty-util__jar__6_1_14
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_12
, org_apache_maven_mercury__mercury-crypto-basic__jar__1_0_0-alpha-2
, bouncycastle__bcprov-jdk15__jar__140
, bouncycastle__bcpg-jdk15__jar__140
, org_apache_maven_mercury__mercury-md-shared__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-util__jar__1_0_0-alpha-2
, commons-cli__commons-cli__jar__1_1
, org_apache_maven_mercury__mercury-repo-local-m2__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-virtual__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-repo-cache-fs__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-md-sat__jar__1_0_0-alpha-2
, org_sat4j__org_sat4j_core__jar__2_0_4
, org_sat4j__org_sat4j_pb__jar__2_0_4
, org_apache_maven_mercury__mercury-event__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-logging__jar__1_0_0-alpha-2
, org_codehaus_plexus__plexus-lang__jar__1_1
, org_codehaus_plexus__plexus-component-annotations__jar__1_0-beta-3_0_1
, org_slf4j__slf4j-jdk14__jar__1_5_3
, org_slf4j__slf4j-api__jar__1_5_3
, org_codehaus_plexus__plexus-classworlds__jar__1_3
, org_sonatype_plexus__plexus-plugin-manager__pom__1_0-alpha-1
}:
patchMavenJar {
  name = "org.sonatype.plexus:plexus-plugin-manager:jar:1.0-alpha-1";
  groupId = "org.sonatype.plexus";
  artifactId = "plexus-plugin-manager";
  version = "1.0-alpha-1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/plexus/plexus-plugin-manager/1.0-alpha-1/plexus-plugin-manager-1.0-alpha-1.jar";
      sha256 = "7336dbb50b71d2115da65580d07e000015e7f42cb6d3680fbb604f3c5103f654";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__jar__3_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_google-collections__google-collect__jar__snapshot-20080530;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__4_5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-plexus__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-remote-m2__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-api__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-artifact__jar__1_0_0-alpha-2;
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
      drv = org_apache_maven_mercury__mercury-external__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-transport-http__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-client__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-sslengine__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-util__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__servlet-api-2_5__jar__6_1_12;
      scope = "compile";
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
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-cli__commons-cli__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-local-m2__jar__1_0_0-alpha-2;
      scope = "compile";
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
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sat4j__org_sat4j_core__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sat4j__org_sat4j_pb__jar__2_0_4;
      scope = "compile";
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
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_0-beta-3_0_1;
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
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-plugin-manager__pom__1_0-alpha-1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
