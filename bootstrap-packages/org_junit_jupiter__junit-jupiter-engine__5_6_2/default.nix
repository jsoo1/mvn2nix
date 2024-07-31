{
  lib
, pkgs
, patchMavenJar
, org_junit_platform__junit-platform-commons__1_6_2
, org_junit_jupiter__junit-jupiter-api__5_6_2
, org_apiguardian__apiguardian-api__1_1_0
, org_opentest4j__opentest4j__1_2_0
, org_junit_platform__junit-platform-engine__1_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-engine:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-engine";
  version = "5.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-engine/5.6.2/junit-jupiter-engine-5.6.2.jar";
        sha256 = "0eb1ab3fc8e4130943b54f4d86824b106ef1cd90d96789343f3944e48b3c501c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-engine/5.6.2/junit-jupiter-engine-5.6.2.pom";
        sha256 = "c6e6887988ca316556762b86ab60ecb644980474d9124a6f2b0edce7f34309d2";
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
      drv = org_junit_jupiter__junit-jupiter-api__5_6_2;
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
    {
      drv = org_junit_platform__junit-platform-engine__1_6_2;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
