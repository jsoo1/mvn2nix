{
  lib
, pkgs
, patchMavenJar
, org_junit_platform__junit-platform-commons__1_6_2
, org_junit_platform__junit-platform-engine__1_6_2
, org_junit_jupiter__junit-jupiter-engine__5_6_2
, org_junit_jupiter__junit-jupiter-api__5_6_2
, org_junit_jupiter__junit-jupiter-params__5_6_2
, org_apiguardian__apiguardian-api__1_1_0
, org_opentest4j__opentest4j__1_2_0
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter";
  version = "5.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter/5.6.2/junit-jupiter-5.6.2.jar";
        sha256 = "dfc0d870dec4c5428a126ddaaa987bdaf8026cc27270929c9f26d52f3030ac61";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter/5.6.2/junit-jupiter-5.6.2.pom";
        sha256 = "7d9ff2af9de09dd3a33429d2ab7d11570315882b2cf583e55b17b1cb32c561d0";
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
      drv = org_junit_platform__junit-platform-engine__1_6_2;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter-engine__5_6_2;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter-api__5_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter-params__5_6_2;
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
