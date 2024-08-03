{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-settings__jar__2_2_1
, org_codehaus_plexus__plexus-interpolation__jar__1_11
, org_apache_maven_wagon__wagon-file__jar__1_0-beta-6
, org_apache_maven__maven-plugin-parameter-documenter__jar__2_2_1
, org_apache_maven_wagon__wagon-http-lightweight__jar__1_0-beta-6
, org_apache_maven_wagon__wagon-http-shared__jar__1_0-beta-6
, nekohtml__xercesMinimal__jar__1_9_6_2
, nekohtml__nekohtml__jar__1_9_6_2
, org_apache_maven_wagon__wagon-http__jar__1_0-beta-6
, org_apache_maven_wagon__wagon-webdav-jackrabbit__jar__1_0-beta-6
, org_apache_jackrabbit__jackrabbit-webdav__jar__1_5_0
, org_apache_jackrabbit__jackrabbit-jcr-commons__jar__1_5_0
, commons-httpclient__commons-httpclient__jar__3_0
, commons-codec__commons-codec__jar__1_2
, org_slf4j__slf4j-nop__jar__1_5_3
, org_slf4j__slf4j-jdk14__jar__1_5_6
, org_slf4j__slf4j-api__jar__1_5_6
, org_slf4j__jcl-over-slf4j__jar__1_5_6
, org_apache_maven_reporting__maven-reporting-api__jar__2_2_1
, org_apache_maven_doxia__doxia-sink-api__jar__1_1
, org_apache_maven_doxia__doxia-logging-api__jar__1_1
, org_apache_maven__maven-profile__jar__2_2_1
, org_apache_maven__maven-model__jar__2_2_1
, org_apache_maven__maven-artifact__jar__2_2_1
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_1
, org_apache_maven__maven-repository-metadata__jar__2_2_1
, org_apache_maven__maven-error-diagnostics__jar__2_2_1
, org_apache_maven__maven-project__jar__2_2_1
, org_apache_maven__maven-plugin-registry__jar__2_2_1
, commons-cli__commons-cli__jar__1_2
, org_apache_maven__maven-plugin-api__jar__2_2_1
, org_apache_maven_wagon__wagon-ssh-external__jar__1_0-beta-6
, org_apache_maven_wagon__wagon-ssh-common__jar__1_0-beta-6
, org_apache_maven__maven-plugin-descriptor__jar__2_2_1
, org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-4
, org_apache_maven__maven-artifact-manager__jar__2_2_1
, backport-util-concurrent__backport-util-concurrent__jar__3_1
, org_apache_maven__maven-monitor__jar__2_2_1
, org_apache_maven_wagon__wagon-ssh__jar__1_0-beta-6
, com_jcraft__jsch__jar__0_1_38
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, classworlds__classworlds__jar__1_1
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_4
, org_apache_maven__maven-core__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/2.2.1/maven-core-2.2.1.jar";
      sha256 = "cfdf0057b2d2a416d48b873afe5a2bf8d848aabbba07636149fcbb622c5952d7";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-settings__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-file__jar__1_0-beta-6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-parameter-documenter__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http-lightweight__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http-shared__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__xercesMinimal__jar__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__nekohtml__jar__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-webdav-jackrabbit__jar__1_0-beta-6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-webdav__jar__1_5_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-jcr-commons__jar__1_5_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__jar__3_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_2;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-nop__jar__1_5_3;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-jdk14__jar__1_5_6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_5_6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__jcl-over-slf4j__jar__1_5_6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_reporting__maven-reporting-api__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-profile__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-error-diagnostics__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-registry__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-cli__commons-cli__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-api__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-ssh-external__jar__1_0-beta-6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-ssh-common__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-descriptor__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__jar__1_0-alpha-4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact-manager__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = backport-util-concurrent__backport-util-concurrent__jar__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-monitor__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-ssh__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_jcraft__jsch__jar__0_1_38;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__jar__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
