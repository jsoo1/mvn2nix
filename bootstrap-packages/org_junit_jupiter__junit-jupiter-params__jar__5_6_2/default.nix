{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_1_0
, org_junit_jupiter__junit-jupiter-api__jar__5_6_2
, org_opentest4j__opentest4j__jar__1_2_0
, org_junit_platform__junit-platform-commons__jar__1_6_2
, org_junit_jupiter__junit-jupiter-params__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-params:jar:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-params";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-params/5.6.2/junit-jupiter-params-5.6.2.jar";
      sha256 = "52f7aeb346cfa41bb33a8d3dbab8c577f9c37f8f5a79a632af10b5c8f1e92186";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__jar__1_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_jupiter__junit-jupiter-api__jar__5_6_2;
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
      drv = org_junit_jupiter__junit-jupiter-params__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
