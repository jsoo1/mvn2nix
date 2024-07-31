{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "logkit:logkit:2.0";
  groupId = "logkit";
  artifactId = "logkit";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/logkit/logkit/2.0/logkit-2.0.jar";
        sha256 = "a3c71e4d3bf7181c64b2c26cf1553303e7f9947518fc5394a9b2f22cbd398423";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/logkit/logkit/2.0/logkit-2.0.pom";
        sha256 = "2ccf6958008669dcf6b8bb814feceb62a278bc60981dba3878d65fce02c006c8";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
