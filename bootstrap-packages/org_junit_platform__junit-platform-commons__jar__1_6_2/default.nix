{
  lib
, pkgs
, patchMavenJar
, org_apiguardian__apiguardian-api__jar__1_1_0
, org_junit_platform__junit-platform-commons__pom__1_6_2
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-commons:jar:1.6.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-commons";
  version = "1.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-commons/1.6.2/junit-platform-commons-1.6.2.jar";
      sha256 = "341621f4d998fd7b539b38baa7e1a3da80b7cac00b983e6206b01c9290915fe9";
    };
  };
  dependencies = [
    {
      drv = org_apiguardian__apiguardian-api__jar__1_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_junit_platform__junit-platform-commons__pom__1_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
