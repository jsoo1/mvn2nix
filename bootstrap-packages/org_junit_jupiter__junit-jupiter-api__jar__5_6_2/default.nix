{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_1_0
, org_opentest4j__opentest4j__jar__1_2_0
, org_junit_platform__junit-platform-commons__jar__1_6_2
, org_junit_jupiter__junit-jupiter-api__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-api:jar:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-api";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-api/5.6.2/junit-jupiter-api-5.6.2.jar";
      sha256 = "3f476de9b214f20ca69da51e801186d001f67328a686df81bc3de3ba11953870";
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
      drv = org_junit_jupiter__junit-jupiter-api__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
