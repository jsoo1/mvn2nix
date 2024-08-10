{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "net.i2p.crypto:eddsa:pom:0.3.0";
  groupId = "net.i2p.crypto";
  artifactId = "eddsa";
  version = "0.3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/net/i2p/crypto/eddsa/0.3.0/eddsa-0.3.0.pom";
      sha256 = "b6b13878e4bae8b768d7ea5732cb4d66ab2f5e9fe707c0a1a776cde9de52051b";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
