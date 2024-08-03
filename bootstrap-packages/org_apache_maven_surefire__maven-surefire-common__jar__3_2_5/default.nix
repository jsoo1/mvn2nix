{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_surefire__surefire-api__jar__3_2_5
, org_apache_maven_surefire__surefire-logger-api__jar__3_2_5
, org_apache_maven_surefire__surefire-extensions-api__jar__3_2_5
, org_apache_maven_surefire__surefire-booter__jar__3_2_5
, org_apache_maven_surefire__surefire-extensions-spi__jar__3_2_5
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_apache_maven_shared__maven-common-artifact-filters__jar__3_1_1
, org_apache_maven__maven-artifact__jar__3_2_5
, org_codehaus_plexus__plexus-utils__jar__4_0_0
, org_apache_maven__maven-core__jar__3_2_5
, org_apache_maven__maven-settings__jar__3_2_5
, org_apache_maven__maven-settings-builder__jar__3_2_5
, org_apache_maven__maven-repository-metadata__jar__3_2_5
, org_apache_maven__maven-model-builder__jar__3_2_5
, org_apache_maven__maven-aether-provider__jar__3_2_5
, org_eclipse_aether__aether-spi__jar__1_0_0_v20140518
, org_eclipse_aether__aether-impl__jar__1_0_0_v20140518
, org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_9_0_M2
, javax_annotation__javax_annotation-api__jar__1_2
, javax_enterprise__cdi-api__jar__1_2
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M2
, org_sonatype_sisu__sisu-guice__jar__no_aop__3_2_3
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, com_google_guava__guava__jar__16_0_1
, org_codehaus_plexus__plexus-interpolation__jar__1_21
, org_codehaus_plexus__plexus-classworlds__jar__2_5_2
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_4
, org_apache_maven__maven-plugin-api__jar__3_2_5
, commons-io__commons-io__jar__2_15_1
, org_codehaus_plexus__plexus-java__jar__1_2_0
, org_ow2_asm__asm__jar__9_6
, com_thoughtworks_qdox__qdox__jar__2_0_3
, org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5
, org_apache_maven_surefire__maven-surefire-common__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven.surefire:maven-surefire-common:jar:3.2.5";
  groupId = "org.apache.maven.surefire";
  artifactId = "maven-surefire-common";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/maven-surefire-common/3.2.5/maven-surefire-common-3.2.5.jar";
      sha256 = "00c66c89a5a303c665db30da3d95edfa993660c85a778f27af73af63e6972685";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_surefire__surefire-api__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-logger-api__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-extensions-api__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-booter__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-extensions-spi__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__jar__3_1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__4_0_0;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-aether-provider__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-spi__jar__1_0_0_v20140518;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-impl__jar__1_0_0_v20140518;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_plexus__jar__0_9_0_M2;
      scope = "provided";
      optional = false;
    }
    {
      drv = javax_annotation__javax_annotation-api__jar__1_2;
      scope = "provided";
      optional = false;
    }
    {
      drv = javax_enterprise__cdi-api__jar__1_2;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M2;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__jar__no_aop__3_2_3;
      scope = "provided";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "provided";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "provided";
      optional = false;
    }
    {
      drv = com_google_guava__guava__jar__16_0_1;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_21;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__2_5_2;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__jar__1_4;
      scope = "provided";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__3_2_5;
      scope = "provided";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_15_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-java__jar__1_2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__jar__9_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_thoughtworks_qdox__qdox__jar__2_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire-shared-utils__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__maven-surefire-common__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
