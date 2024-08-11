{
  lib
, pkgs
, patchMavenJar
, com_github_luben__zstd-jni__pom__1_5_5-5
}:
patchMavenJar {
  name = "zstd-jni";
  coordinates = "com.github.luben:zstd-jni:jar:1.5.5-5";
  groupId = "com.github.luben";
  artifactId = "zstd-jni";
  version = "1.5.5-5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.5.5-5/zstd-jni-1.5.5-5.jar";
      sha256 = "c78d4e139894f555d956d12fbfcf3d45af751d4b2f183880ed5f99b69b284416";
    };
  };
  dependencies = [
    {
      drv = com_github_luben__zstd-jni__pom__1_5_5-5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
