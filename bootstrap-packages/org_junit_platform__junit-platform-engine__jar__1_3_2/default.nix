{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_0_0
, org_junit_platform__junit-platform-commons__jar__1_3_2
, org_opentest4j__opentest4j__jar__1_1_1
, org_junit_platform__junit-platform-engine__pom__1_3_2
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-engine:jar:1.3.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-engine";
  version = "1.3.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-engine/1.3.2/junit-platform-engine-1.3.2.jar";
      sha256 = "0d7575d6f7a589c19ddad90d44325f24ee6f2254765f728bc9cbb9428a294e85";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__jar__1_0_0;
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
      drv = org_junit_platform__junit-platform-engine__pom__1_3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
