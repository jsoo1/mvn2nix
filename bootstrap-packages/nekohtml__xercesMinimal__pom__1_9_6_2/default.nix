{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "nekohtml:xercesMinimal:pom:1.9.6.2";
  groupId = "nekohtml";
  artifactId = "xercesMinimal";
  version = "1.9.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/nekohtml/xercesMinimal/1.9.6.2/xercesMinimal-1.9.6.2.pom";
      sha256 = "c219d697fa9c8f243d8f6e347499b6d4e8af1d0cac4bbc7b3907d338a2024c13";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
