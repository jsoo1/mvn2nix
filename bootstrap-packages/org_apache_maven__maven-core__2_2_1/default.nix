{
  lib
, pkgs
, patchMavenJar
, org_slf4j__jcl-over-slf4j__1_5_6
, org_apache_maven__maven-profile__2_2_1
, org_sonatype_plexus__plexus-cipher__1_4
, org_apache_jackrabbit__jackrabbit-webdav__1_5_0
, org_slf4j__slf4j-jdk14__1_5_6
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0
, org_apache_maven__maven-parent__pom__11
, commons-codec__commons-codec__1_2
, org_apache_maven__maven-plugin-registry__2_2_1
, nekohtml__nekohtml__1_9_6_2
, org_slf4j__slf4j-nop__1_5_3
, org_apache_maven__maven-monitor__2_2_1
, org_apache_maven__maven-settings__2_2_1
, org_codehaus_plexus__plexus-interpolation__1_11
, org_apache_maven__maven-artifact__2_2_1
, org_apache__apache__pom__5
, org_slf4j__slf4j-api__1_5_6
, org_apache_maven__maven-plugin-descriptor__2_2_1
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-project__2_2_1
, commons-httpclient__commons-httpclient__3_1
, org_apache_maven_wagon__wagon-http__1_0-beta-6
, org_apache_maven__maven-plugin-api__2_2_1
, org_apache_maven__maven-plugin-parameter-documenter__2_2_1
, org_apache_maven_wagon__wagon-provider-api__1_0-beta-6
, nekohtml__xercesMinimal__1_9_6_2
, org_apache_maven__maven-model__2_2_1
, org_apache_maven__maven-artifact-manager__2_2_1
, org_apache_maven_wagon__wagon-http-shared__1_0-beta-6
, org_apache_maven__maven__pom__2_2_1
, org_apache_maven__maven-error-diagnostics__2_2_1
, backport-util-concurrent__backport-util-concurrent__3_1
, org_apache_maven__maven-repository-metadata__2_2_1
, org_apache_maven_wagon__wagon-webdav-jackrabbit__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/2.2.1/maven-core-2.2.1.jar";
        sha256 = "cfdf0057b2d2a416d48b873afe5a2bf8d848aabbba07636149fcbb622c5952d7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/2.2.1/maven-core-2.2.1.pom";
        sha256 = "5cc81603cab47bf20dbfd5e28e311da1fd26f2e3617b50547da5cd0b4f59edf3";
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
      drv = org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
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
      drv = org_apache__apache__pom__5;
      scope = "test";
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
      drv = org_apache_maven__maven-project__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__2_2_1;
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
      drv = org_apache_maven_wagon__wagon-http-shared__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
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
      drv = org_apache_maven_wagon__wagon-webdav-jackrabbit__1_0-beta-6;
      scope = "runtime";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
