{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.github.luben:zstd-jni:1.5.5-6";
  groupId = "com.github.luben";
  artifactId = "zstd-jni";
  version = "1.5.5-6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.5.5-6/zstd-jni-1.5.5-6.jar";
        sha256 = "bd60c49fdf9b61443ccce58de56c05a09fa101173551dff7458d28b009a94fca";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/github/luben/zstd-jni/1.5.5-6/zstd-jni-1.5.5-6.pom";
        sha256 = "bc3fa6ec9fca10555663089f7f5c0ff69269b2c247f307394f0ea5bcdabc2e6a";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
