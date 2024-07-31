{ lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
, com_squareup_moshi__moshi__1_10_0
, org_assertj__assertj-core__3_16_1
, org_ow2_asm__asm__6_2
, org_apache_commons__commons-parent__pom__71
, org_apache__apache__pom__32
, org_apache_maven_plugins__maven-failsafe-plugin__3_0_0-M5
, org_apache_maven_plugins__maven-jar-plugin__3_2_0
, eu_maveniverse_maven_mima__mima__pom__2_4_15
, eu_maveniverse_maven_mima_runtime__standalone-static-uber__2_4_15
, org_apache_maven__maven-parent__pom__33
, com_squareup_moshi__moshi-parent__pom__1_10_0
, org_ow2__ow2__pom__1_5
, org_apache_maven__maven-core__3_9_8
, org_slf4j__slf4j-simple__2_0_13
, org_apache_maven_plugins__maven-plugins__pom__33
, org_apache_maven_surefire__surefire__pom__3_0_0-M5
, org_apache_maven__maven-parent__pom__31
, org_apache__apache__pom__19
, commons-logging__commons-logging__1_3_3
, org_junit_jupiter__junit-jupiter__5_6_2
, org_apache_maven_shared__maven-shared-components__pom__31
, org_assertj__assertj-parent-pom__pom__2_2_7
, org_slf4j__slf4j-bom__pom__2_0_13
, org_apache__apache__pom__23
, eu_maveniverse_maven_parent__parent__pom__15
, eu_maveniverse_maven_mima_runtime__runtime__pom__2_4_15
, org_apache_maven_plugins__maven-surefire-plugin__3_0_0-M5
, org_apache_maven_shared__maven-invoker__3_0_1
, org_apache_maven_plugins__maven-compiler-plugin__3_8_1
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven__maven-parent__pom__42
, eu_maveniverse_maven_mima__context__2_4_15
, info_picocli__picocli__4_5_0
, org_slf4j__slf4j-parent__pom__2_0_13
, org_apache_maven__maven-parent__pom__34
, org_apache__apache__pom__21
, org_slf4j__slf4j-api__2_0_13
}:
patchMavenJar {
  name = "com.fzakaria:mvn2nix:pom:0.1";
  groupId = "com.fzakaria";
  artifactId = "mvn2nix";
  version = "0.1";
  classifier = null;
  artifacts = [ ];
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
    {
      drv = com_squareup_moshi__moshi__1_10_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_assertj__assertj-core__3_16_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_ow2_asm__asm__6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__71;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-failsafe-plugin__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-jar-plugin__3_2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_mima__mima__pom__2_4_15;
      scope = "test";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_mima_runtime__standalone-static-uber__2_4_15;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = com_squareup_moshi__moshi-parent__pom__1_10_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_ow2__ow2__pom__1_5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-core__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-simple__2_0_13;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__33;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_surefire__surefire__pom__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__19;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_3_3;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter__5_6_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_assertj__assertj-parent-pom__pom__2_2_7;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-bom__pom__2_0_13;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_parent__parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_mima_runtime__runtime__pom__2_4_15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-surefire-plugin__3_0_0-M5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-invoker__3_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-compiler-plugin__3_8_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_mima__context__2_4_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = info_picocli__picocli__4_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-parent__pom__2_0_13;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__2_0_13;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
