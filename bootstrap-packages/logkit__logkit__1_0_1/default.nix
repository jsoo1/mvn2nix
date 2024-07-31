{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "logkit:logkit:1.0.1";
  groupId = "logkit";
  artifactId = "logkit";
  version = "1.0.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/logkit/logkit/1.0.1/logkit-1.0.1.jar";
        sha256 = "7ea93b4fc21f3d05ed224b168a025f864db75ddfddc2343e1ec29a386d7501e0";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/logkit/logkit/1.0.1/logkit-1.0.1.pom";
        sha256 = "3de328dfa1b563ba6dfc5829774cf2f8dab0dc9528ed2731c35251ab7fd6c4c6";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
