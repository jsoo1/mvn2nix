{
  lib
, pkgs
, patchMavenJar
, logkit__logkit__pom__1_0_1
}:
patchMavenJar {
  name = "logkit:logkit:jar:1.0.1";
  groupId = "logkit";
  artifactId = "logkit";
  version = "1.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/logkit/logkit/1.0.1/logkit-1.0.1.jar";
      sha256 = "7ea93b4fc21f3d05ed224b168a025f864db75ddfddc2343e1ec29a386d7501e0";
    };
  };
  dependencies = [
    {
      drv = logkit__logkit__pom__1_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
