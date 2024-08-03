{
  lib
, pkgs
, patchMavenJar
, nekohtml__xercesMinimal__pom__1_9_6_2
}:
patchMavenJar {
  name = "nekohtml:xercesMinimal:jar:1.9.6.2";
  groupId = "nekohtml";
  artifactId = "xercesMinimal";
  version = "1.9.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/nekohtml/xercesMinimal/1.9.6.2/xercesMinimal-1.9.6.2.jar";
      sha256 = "95b8b357d19f63797dd7d67622fd3f18374d64acbc6584faba1c7759a31e8438";
    };
  };
  dependencies = [
    {
      drv = nekohtml__xercesMinimal__pom__1_9_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
