{
  lib
, pkgs
, patchMavenJar
, org_junit_jupiter__junit-jupiter-api__jar__5_6_2
, org_apiguardian__apiguardian-api__jar__1_1_0
, org_opentest4j__opentest4j__jar__1_2_0
, org_junit_platform__junit-platform-commons__jar__1_6_2
, org_junit_jupiter__junit-jupiter-params__jar__5_6_2
, org_junit_jupiter__junit-jupiter-engine__jar__5_6_2
, org_junit_platform__junit-platform-engine__jar__1_6_2
, org_junit_jupiter__junit-jupiter__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter:jar:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter/5.6.2/junit-jupiter-5.6.2.jar";
      sha256 = "dfc0d870dec4c5428a126ddaaa987bdaf8026cc27270929c9f26d52f3030ac61";
    };
  };
  dependencies = [
    {
      drv = org_junit_jupiter__junit-jupiter-api__jar__5_6_2;
      scope = "compile";
      optional = false;
    }
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
      drv = org_junit_jupiter__junit-jupiter-params__jar__5_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter-engine__jar__5_6_2;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-engine__jar__1_6_2;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
