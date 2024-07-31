{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__1_7_13
}:
patchMavenJar {
  name = "com.conversantmedia:disruptor:1.2.15";
  groupId = "com.conversantmedia";
  artifactId = "disruptor";
  version = "1.2.15";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/conversantmedia/disruptor/1.2.15/disruptor-1.2.15.jar";
        sha256 = "bd3154a3fb41594b02950ad52bcd9b775a45577bd4d6ef1bee66ea6885c9f39e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/conversantmedia/disruptor/1.2.15/disruptor-1.2.15.pom";
        sha256 = "8bff044c415f3186be04ac15ed51a90584ab2b5ee5f4c738c99e7eee66e4f885";
      };
    }
  ];
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__1_7_13;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
