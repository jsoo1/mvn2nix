{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.github.luben:zstd-jni:1.4.0-1";
  groupId = "com.github.luben";
  artifactId = "zstd-jni";
  version = "1.4.0-1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.4.0-1/zstd-jni-1.4.0-1.jar";
        sha256 = "0d45847c7a1fc59c24ee71d942cc1faea6a78ce7a88bf65838358bda2a316567";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.4.0-1/zstd-jni-1.4.0-1.pom";
        sha256 = "8a805fb405a9734573bc2ff14cbe67fbac5c40437a7017b3317c7253e5526816";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
