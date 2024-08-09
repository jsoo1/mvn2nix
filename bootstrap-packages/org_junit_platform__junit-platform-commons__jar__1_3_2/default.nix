{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_0_0
, org_junit_platform__junit-platform-commons__pom__1_3_2
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-commons:jar:1.3.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-commons";
  version = "1.3.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-commons/1.3.2/junit-platform-commons-1.3.2.jar";
      sha256 = "34e2a20df030c377741f8dcdb2e94c82d3af3d554ac3d5e6c8053a320b4ae51a";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__jar__1_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-commons__pom__1_3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
