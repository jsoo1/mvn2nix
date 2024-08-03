{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.jcraft:jsch:pom:0.1.38";
  groupId = "com.jcraft";
  artifactId = "jsch";
  version = "0.1.38";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/jcraft/jsch/0.1.38/jsch-0.1.38.pom";
      sha256 = "be147617351848d3485707a2a91ea700b7e697eff4722b8528ef06e5d6d96bd6";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
