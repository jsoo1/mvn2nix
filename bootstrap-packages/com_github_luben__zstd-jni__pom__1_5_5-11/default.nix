{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.github.luben:zstd-jni:pom:1.5.5-11";
  groupId = "com.github.luben";
  artifactId = "zstd-jni";
  version = "1.5.5-11";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.5.5-11/zstd-jni-1.5.5-11.pom";
      sha256 = "a0152b1897c4a6e7dd36e5f686f0e631c3839b5db208b38daa11a4f6dc9b25ff";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
