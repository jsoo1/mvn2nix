{
  lib
, pkgs
, patchMavenJar
, org_junit_platform__junit-platform-commons__1_6_2
, org_apiguardian__apiguardian-api__1_1_0
, org_opentest4j__opentest4j__1_2_0
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-engine:1.6.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-engine";
  version = "1.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-engine/1.6.2/junit-platform-engine-1.6.2.jar";
        sha256 = "23b41ac95e4673f7b31e8502424451be4154fe4db1d448448945e2215473c246";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-engine/1.6.2/junit-platform-engine-1.6.2.pom";
        sha256 = "6572dcfd47e62fc04d8571cd6a21c0101c5f4f779f0b162824067efa4d9dc07a";
      };
    }
  ];
  dependencies = [
    {
      drv = org_junit_platform__junit-platform-commons__1_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apiguardian__apiguardian-api__1_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_opentest4j__opentest4j__1_2_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
