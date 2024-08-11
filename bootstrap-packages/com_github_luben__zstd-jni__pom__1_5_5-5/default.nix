{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "zstd-jni";
  coordinates = "com.github.luben:zstd-jni:pom:1.5.5-5";
  groupId = "com.github.luben";
  artifactId = "zstd-jni";
  version = "1.5.5-5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.5.5-5/zstd-jni-1.5.5-5.pom";
      sha256 = "232c62cff322717d3d9355d278c65904b111f3d7eba038b15e115578208c2d0d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
