{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__3_0
, commons-io__commons-io__2_5
, org_slf4j__slf4j-api__1_7_5
, org_codehaus_plexus__plexus-component-annotations__2_0_0
, org_apache_maven_shared__maven-shared-components__pom__34
, org_sonatype_sisu__sisu-guice__2_1_7__noaop
, org_sonatype_sisu__sisu-inject-plexus__1_4_2
, org_apache_maven__maven-plugin-api__3_0
, org_apache_maven_shared__maven-shared-utils__3_1_0
, org_apache_maven__maven-parent__pom__34
, org_codehaus_plexus__plexus-classworlds__2_2_3
, org_apache_maven_shared__maven-common-artifact-filters__3_1_0
, org_sonatype_sisu__sisu-inject-bean__1_4_2
, org_codehaus_plexus__plexus-utils__3_3_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-artifact-transfer:0.13.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-artifact-transfer";
  version = "0.13.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.13.1/maven-artifact-transfer-0.13.1.jar";
        sha256 = "1ac88accde99ed71e65253bd130868c0e654f940f01ade073b895eb2f817cf06";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-artifact-transfer/0.13.1/maven-artifact-transfer-0.13.1.pom";
        sha256 = "e4b15a1e7cfbfe480408cfbaa148d66ea3324bf19e9ac6d6c17053bdb18ac4cd";
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
      drv = commons-io__commons-io__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_7_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
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
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__2_2_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-common-artifact-filters__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_sisu__sisu-inject-bean__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
