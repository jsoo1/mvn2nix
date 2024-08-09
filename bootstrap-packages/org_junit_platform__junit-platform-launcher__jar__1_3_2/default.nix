{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_0_0
, org_junit_platform__junit-platform-engine__jar__1_3_2
, org_junit_platform__junit-platform-commons__jar__1_3_2
, org_opentest4j__opentest4j__jar__1_1_1
, org_junit_platform__junit-platform-launcher__pom__1_3_2
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-launcher:jar:1.3.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-launcher";
  version = "1.3.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-launcher/1.3.2/junit-platform-launcher-1.3.2.jar";
      sha256 = "797a863f256602ca349b8e70f9ff2460e20aafbd57b75627f5ac82beb927085a";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__jar__1_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-engine__jar__1_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-commons__jar__1_3_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_opentest4j__opentest4j__jar__1_1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-launcher__pom__1_3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
