{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_1_0
, org_opentest4j__opentest4j__jar__1_2_0
, org_junit_platform__junit-platform-commons__jar__1_6_2
, org_junit_platform__junit-platform-engine__pom__1_6_2
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-engine:jar:1.6.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-engine";
  version = "1.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-engine/1.6.2/junit-platform-engine-1.6.2.jar";
      sha256 = "23b41ac95e4673f7b31e8502424451be4154fe4db1d448448945e2215473c246";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__jar__1_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_opentest4j__opentest4j__jar__1_2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-commons__jar__1_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-engine__pom__1_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
