{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__3_0
, org_apache_maven_shared__maven-shared-components__pom__33
, commons-io__commons-io__2_5
, commons-codec__commons-codec__1_11
, org_apache_maven__maven-parent__pom__33
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_sonatype_sisu__sisu-inject-plexus__1_4_2
, org_apache_maven__maven-plugin-api__3_0
, org_apache_maven_shared__maven-shared-utils__3_1_0
, org_apache__apache__pom__21
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_apache_maven_shared__maven-common-artifact-filters__3_0_1
, org_sonatype_sisu__sisu-inject-bean__1_4_2
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-artifact-transfer:0.11.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-artifact-transfer";
  version = "0.11.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.11.0/maven-artifact-transfer-0.11.0.jar";
        sha256 = "1f474df0b9dd55e5bb755a131ec64b307c557293328711adb579d21c010dffde";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.11.0/maven-artifact-transfer-0.11.0.pom";
        sha256 = "18cb9370815a5bd8002208fd8e51a53abee7eb056f3ae90fee9f276a4e4d909e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-model__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-guice__2_1_7__noaop;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-plexus__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__3_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__1_4_2;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
