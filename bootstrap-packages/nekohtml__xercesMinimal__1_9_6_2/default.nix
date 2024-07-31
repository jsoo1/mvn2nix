{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "nekohtml:xercesMinimal:1.9.6.2";
  groupId = "nekohtml";
  artifactId = "xercesMinimal";
  version = "1.9.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/nekohtml/xercesMinimal/1.9.6.2/xercesMinimal-1.9.6.2.jar";
        sha256 = "95b8b357d19f63797dd7d67622fd3f18374d64acbc6584faba1c7759a31e8438";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/nekohtml/xercesMinimal/1.9.6.2/xercesMinimal-1.9.6.2.pom";
        sha256 = "c219d697fa9c8f243d8f6e347499b6d4e8af1d0cac4bbc7b3907d338a2024c13";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
