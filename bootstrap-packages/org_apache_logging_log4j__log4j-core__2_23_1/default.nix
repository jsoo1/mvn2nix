{
  lib
, pkgs
, patchMavenJar
, com_fasterxml_jackson_core__jackson-databind__2_16_1
, org_jctools__jctools-core__4_0_3
, org_apache_logging_log4j__log4j-bom__pom__2_23_1
, org_apache_commons__commons-compress__1_26_0
, org_apache__apache__pom__31
, com_fasterxml_jackson_core__jackson-annotations__2_16_1
, org_lz4__lz4-java__1_8_0
, com_fasterxml_woodstox__woodstox-core__6_5_1
, org_apache_logging_log4j__log4j__pom__2_23_1
, com_fasterxml_jackson_core__jackson-core__2_16_1
, org_apache_logging_log4j__log4j-api__2_23_1
, org_fusesource_jansi__jansi__2_4_1
, com_sun_mail__javax_mail__1_6_2
, org_apache_logging__logging-parent__pom__10_6_0
, org_apache_commons__commons-lang3__3_14_0
, com_lmax__disruptor__3_4_4
, com_conversantmedia__disruptor__1_2_15
, javax_activation__activation__1_1
, com_fasterxml_jackson_dataformat__jackson-dataformat-yaml__2_16_1
, eu_neilalexander__jnacl__1_0_0
, org_apache_kafka__kafka-clients__3_7_0
, org_apache_commons__commons-csv__1_10_0
, org_codehaus_woodstox__stax2-api__4_2_1
, org_xerial_snappy__snappy-java__1_1_10_5
, commons-io__commons-io__2_15_1
, org_zeromq__jeromq__0_6_0
, org_yaml__snakeyaml__2_2
, org_slf4j__slf4j-api__2_0_9
, com_github_luben__zstd-jni__1_5_5-11
, com_fasterxml_jackson_dataformat__jackson-dataformat-xml__2_16_1
}:
patchMavenJar {
  name = "org.apache.logging.log4j:log4j-core:2.23.1";
  groupId = "org.apache.logging.log4j";
  artifactId = "log4j-core";
  version = "2.23.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j-core/2.23.1/log4j-core-2.23.1.jar";
        sha256 = "7079368005fc34f56248f57f8a8a53361c3a53e9007d556dbc66fc669df081b5";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j-core/2.23.1/log4j-core-2.23.1.pom";
        sha256 = "c89ba0c23757511b9252b27a731d01e863b28ddfce503e7dee94ae2318c82ddc";
      };
    }
  ];
  dependencies = [
    {
      drv = com_fasterxml_jackson_core__jackson-databind__2_16_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_jctools__jctools-core__4_0_3;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_logging_log4j__log4j-bom__pom__2_23_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-compress__1_26_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = com_fasterxml_jackson_core__jackson-annotations__2_16_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_lz4__lz4-java__1_8_0;
      scope = "runtime";
      optional = true;
    }
    {
      drv = com_fasterxml_woodstox__woodstox-core__6_5_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_logging_log4j__log4j__pom__2_23_1;
      scope = "test";
      optional = false;
    }
    {
      drv = com_fasterxml_jackson_core__jackson-core__2_16_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_logging_log4j__log4j-api__2_23_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_fusesource_jansi__jansi__2_4_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = com_sun_mail__javax_mail__1_6_2;
      scope = "runtime";
      optional = true;
    }
    {
      drv = org_apache_logging__logging-parent__pom__10_6_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__3_14_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = com_lmax__disruptor__3_4_4;
      scope = "compile";
      optional = true;
    }
    {
      drv = com_conversantmedia__disruptor__1_2_15;
      scope = "compile";
      optional = true;
    }
    {
      drv = javax_activation__activation__1_1;
      scope = "runtime";
      optional = true;
    }
    {
      drv = com_fasterxml_jackson_dataformat__jackson-dataformat-yaml__2_16_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = eu_neilalexander__jnacl__1_0_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_kafka__kafka-clients__3_7_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_commons__commons-csv__1_10_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_codehaus_woodstox__stax2-api__4_2_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_xerial_snappy__snappy-java__1_1_10_5;
      scope = "runtime";
      optional = true;
    }
    {
      drv = commons-io__commons-io__2_15_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_zeromq__jeromq__0_6_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_yaml__snakeyaml__2_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_slf4j__slf4j-api__2_0_9;
      scope = "runtime";
      optional = true;
    }
    {
      drv = com_github_luben__zstd-jni__1_5_5-11;
      scope = "runtime";
      optional = true;
    }
    {
      drv = com_fasterxml_jackson_dataformat__jackson-dataformat-xml__2_16_1;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
