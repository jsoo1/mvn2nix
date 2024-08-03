{
  lib
, pkgs
, patchMavenJar
, com_github_luben__zstd-jni__pom__1_5_5-11
}:
patchMavenJar {
  name = "com.github.luben:zstd-jni:jar:1.5.5-11";
  groupId = "com.github.luben";
  artifactId = "zstd-jni";
  version = "1.5.5-11";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.5.5-11/zstd-jni-1.5.5-11.jar";
      sha256 = "d75b2ced6059f81ad23e021c554259b906b6c4f2991cb772409827569ead4c1a";
    };
  };
  dependencies = [
    {
      drv = com_github_luben__zstd-jni__pom__1_5_5-11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
