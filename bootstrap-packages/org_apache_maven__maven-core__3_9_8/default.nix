{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__32
, org_codehaus_plexus__plexus-cipher__2_0
, org_codehaus_plexus__plexus-sec-dispatcher__2_0
, org_apache_maven_shared__maven-shared-utils__3_4_2
, org_codehaus_plexus__plexus-classworlds__2_8_0
, org_apache_maven_resolver__maven-resolver-named-locks__1_9_20
, org_apache_maven__maven-settings-builder__3_9_8
, org_apache_maven__maven-repository-metadata__3_9_8
, org_apache_maven__maven-model-builder__3_9_8
, org_apache_maven_resolver__maven-resolver-impl__1_9_20
, org_apache_maven__maven-resolver-provider__3_9_8
, org_apache_maven_resolver__maven-resolver-spi__1_9_20
, org_apache_maven_resolver__maven-resolver-util__1_9_20
, org_apache_maven__maven-builder-support__3_9_8
, org_apache_maven__maven-artifact__3_9_8
, org_apache_maven__maven-plugin-api__3_9_8
, javax_inject__javax_inject__1
, org_apache_maven__maven-model__3_9_8
, com_google_inject__guice__5_1_0
, org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3
, org_codehaus_plexus__plexus-component-annotations__2_1_0
, org_slf4j__slf4j-api__1_7_36
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven_resolver__maven-resolver-api__1_9_20
, org_eclipse_sisu__org_eclipse_sisu_plexus__0_9_0_M3
, org_apache_maven__maven-parent__pom__42
, com_google_guava__guava__33_2_1-jre
, org_apache_maven__maven-settings__3_9_8
, org_codehaus_plexus__plexus-xml__3_0_0
, org_codehaus_plexus__plexus-utils__3_5_1
, org_codehaus_plexus__plexus-interpolation__1_27
, com_google_guava__failureaccess__1_0_2
, aopalliance__aopalliance__1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/3.9.8/maven-core-3.9.8.jar";
        sha256 = "136d95ada12098f48222638bfdb68ace0e1b518d676cd43845d31eb0aed37736";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/3.9.8/maven-core-3.9.8.pom";
        sha256 = "45d1bf26b14259c7f54abee6d66407fa7506d200ef923f6360f4e07113d219d1";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-sec-dispatcher__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_8_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-named-locks__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-impl__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-resolver-provider__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-spi__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-builder-support__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_inject__guice__5_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = com_google_guava__guava__33_2_1-jre;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__failureaccess__1_0_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__1_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
