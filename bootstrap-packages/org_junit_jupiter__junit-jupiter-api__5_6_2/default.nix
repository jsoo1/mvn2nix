{
  lib
, pkgs
, patchMavenJar
, org_junit_platform__junit-platform-commons__1_6_2
, org_apiguardian__apiguardian-api__1_1_0
, org_opentest4j__opentest4j__1_2_0
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-api:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-api";
  version = "5.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-api/5.6.2/junit-jupiter-api-5.6.2.jar";
        sha256 = "3f476de9b214f20ca69da51e801186d001f67328a686df81bc3de3ba11953870";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-api/5.6.2/junit-jupiter-api-5.6.2.pom";
        sha256 = "1d3b97e7a6fcd708fb42cada5a70131d08d5a505b15a51bce76aca6f4d67d23b";
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
