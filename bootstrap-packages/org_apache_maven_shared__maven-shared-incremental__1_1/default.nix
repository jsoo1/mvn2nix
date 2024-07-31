{
  lib
, pkgs
, patchMavenJar
, org_slf4j__jcl-over-slf4j__1_5_6
, org_apache_maven__maven-profile__2_2_1
, org_sonatype_plexus__plexus-cipher__1_4
, com_google_code_findbugs__jsr305__2_0_1
, org_apache_jackrabbit__jackrabbit-webdav__1_5_0
, org_slf4j__slf4j-jdk14__1_5_6
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_apache_maven_shared__maven-shared-components__pom__19
, org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0
, commons-codec__commons-codec__1_2
, org_apache_maven__maven-plugin-registry__2_2_1
, nekohtml__nekohtml__1_9_6_2
, org_slf4j__slf4j-nop__1_5_3
, org_apache_maven__maven-monitor__2_2_1
, org_apache_maven__maven-settings__2_2_1
, org_codehaus_plexus__plexus-interpolation__1_11
, org_apache_maven__maven-artifact__2_2_1
, org_slf4j__slf4j-api__1_5_6
, org_apache_maven__maven-plugin-descriptor__2_2_1
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-parent__pom__23
, org_apache_maven__maven-project__2_2_1
, org_apache__apache__pom__13
, commons-httpclient__commons-httpclient__3_1
, org_apache_maven__maven-plugin-api__2_2_1
, org_apache_maven_wagon__wagon-http__1_0-beta-6
, org_apache_maven__maven-plugin-parameter-documenter__2_2_1
, org_apache_maven_wagon__wagon-provider-api__1_0-beta-6
, nekohtml__xercesMinimal__1_9_6_2
, org_apache_maven__maven-model__2_2_1
, org_apache_maven__maven-artifact-manager__2_2_1
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_apache_maven_shared__maven-shared-utils__0_1
, org_apache_maven_wagon__wagon-http-shared__1_0-beta-6
, org_apache_maven__maven-error-diagnostics__2_2_1
, backport-util-concurrent__backport-util-concurrent__3_1
, org_apache_maven__maven-repository-metadata__2_2_1
, org_apache_maven__maven-core__2_2_1
, org_apache_maven_wagon__wagon-webdav-jackrabbit__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-incremental:1.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-incremental";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-incremental/1.1/maven-shared-incremental-1.1.jar";
        sha256 = "61988e54486a5dc38f06c70fdae5b108556c63bd433697b9f4305fcdb30fa40e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-incremental/1.1/maven-shared-incremental-1.1.pom";
        sha256 = "f21d19eb49b4a66cd85354a9ee7335439ea92a368173760a202766008cc19924";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__jcl-over-slf4j__1_5_6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-profile__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__2_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-webdav__1_5_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-jdk14__1_5_6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__19;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-registry__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__nekohtml__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-nop__1_5_3;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-monitor__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_5_6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-descriptor__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__23;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__13;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-parameter-documenter__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__xercesMinimal__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact-manager__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http-shared__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-error-diagnostics__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = backport-util-concurrent__backport-util-concurrent__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-webdav-jackrabbit__1_0-beta-6;
      scope = "runtime";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
