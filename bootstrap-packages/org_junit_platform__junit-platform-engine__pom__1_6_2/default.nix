{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.platform:junit-platform-engine:pom:1.6.2";
  groupId = "org.junit.platform";
  artifactId = "junit-platform-engine";
  version = "1.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/platform/junit-platform-engine/1.6.2/junit-platform-engine-1.6.2.pom";
      sha256 = "6572dcfd47e62fc04d8571cd6a21c0101c5f4f779f0b162824067efa4d9dc07a";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
