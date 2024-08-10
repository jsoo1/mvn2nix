{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-chain:commons-chain:pom:1.0";
  groupId = "commons-chain";
  artifactId = "commons-chain";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-chain/commons-chain/1.0/commons-chain-1.0.pom";
      sha256 = "7787ade069fd471d09ad5ae256255d424799c8a95caa26461ede2343f169f5d4";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
