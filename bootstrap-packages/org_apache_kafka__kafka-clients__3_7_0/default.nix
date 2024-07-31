{
  lib
, pkgs
, patchMavenJar
, com_github_luben__zstd-jni__1_5_5-6
, org_slf4j__slf4j-api__1_7_36
, org_lz4__lz4-java__1_8_0
, org_xerial_snappy__snappy-java__1_1_10_5
}:
patchMavenJar {
  name = "org.apache.kafka:kafka-clients:3.7.0";
  groupId = "org.apache.kafka";
  artifactId = "kafka-clients";
  version = "3.7.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/kafka/kafka-clients/3.7.0/kafka-clients-3.7.0.jar";
        sha256 = "0a74867a6d393ee4869c41a4af87009b01c3a017c2b1c42e3d724c89ae0d2d3f";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/kafka/kafka-clients/3.7.0/kafka-clients-3.7.0.pom";
        sha256 = "104c3103204fc346e888abe907b4a290ffff0023ddea8623e9110ef9d27cca9d";
      };
    }
  ];
  dependencies = [
    {
      drv = com_github_luben__zstd-jni__1_5_5-6;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_lz4__lz4-java__1_8_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_xerial_snappy__snappy-java__1_1_10_5;
      scope = "runtime";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
