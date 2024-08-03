{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_9_8
, org_apache_maven__maven-settings__jar__3_9_8
, org_apache_maven__maven-settings-builder__jar__3_9_8
, org_codehaus_plexus__plexus-sec-dispatcher__jar__2_0
, org_codehaus_plexus__plexus-cipher__jar__2_0
, org_apache_maven__maven-builder-support__jar__3_9_8
, org_apache_maven__maven-repository-metadata__jar__3_9_8
, org_apache_maven__maven-artifact__jar__3_9_8
, org_apache_maven__maven-plugin-api__jar__3_9_8
, org_apache_maven__maven-model-builder__jar__3_9_8
, org_apache_maven__maven-resolver-provider__jar__3_9_8
, org_apache_maven_resolver__maven-resolver-impl__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-named-locks__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-spi__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-util__jar__1_9_20
, org_apache_maven_shared__maven-shared-utils__jar__3_4_2
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_9_0_M3
, org_codehaus_plexus__plexus-xml__jar__3_0_0
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3
, com_google_inject__guice__jar__5_1_0
, aopalliance__aopalliance__jar__1_0
, com_google_guava__guava__jar__33_2_1-jre
, com_google_guava__failureaccess__jar__1_0_2
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_codehaus_plexus__plexus-classworlds__jar__2_8_0
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, org_codehaus_plexus__plexus-component-annotations__jar__2_1_0
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven__maven-core__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/3.9.8/maven-core-3.9.8.jar";
      sha256 = "136d95ada12098f48222638bfdb68ace0e1b518d676cd43845d31eb0aed37736";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-sec-dispatcher__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-builder-support__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-resolver-provider__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-impl__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-named-locks__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-spi__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_inject__guice__jar__5_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__jar__33_2_1-jre;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__failureaccess__jar__1_0_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_8_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
