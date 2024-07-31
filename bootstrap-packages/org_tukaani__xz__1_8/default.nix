{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.tukaani:xz:1.8";
  groupId = "org.tukaani";
  artifactId = "xz";
  version = "1.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/tukaani/xz/1.8/xz-1.8.jar";
        sha256 = "8c7964b36fe3f0cbe644b04fcbff84e491ce81917db2f5bfa0cba8e9548aff5d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/tukaani/xz/1.8/xz-1.8.pom";
        sha256 = "f29e75cb88eb4acbf7e5aa5c09ed55eac2cbae601d63a9f375231f45452c1013";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
