{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_1_0
, org_junit_platform__junit-platform-engine__jar__1_6_2
, org_opentest4j__opentest4j__jar__1_2_0
, org_junit_platform__junit-platform-commons__jar__1_6_2
, org_junit_jupiter__junit-jupiter-api__jar__5_6_2
, org_junit_jupiter__junit-jupiter-engine__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-engine:jar:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-engine";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-engine/5.6.2/junit-jupiter-engine-5.6.2.jar";
      sha256 = "0eb1ab3fc8e4130943b54f4d86824b106ef1cd90d96789343f3944e48b3c501c";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__jar__1_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-engine__jar__1_6_2;
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
      drv = org_junit_jupiter__junit-jupiter-api__jar__5_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter-engine__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
