{
  lib
, pkgs
, patchMavenJar
, org_tukaani__xz__pom__1_8
}:
patchMavenJar {
  name = "org.tukaani:xz:jar:1.8";
  groupId = "org.tukaani";
  artifactId = "xz";
  version = "1.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/tukaani/xz/1.8/xz-1.8.jar";
      sha256 = "8c7964b36fe3f0cbe644b04fcbff84e491ce81917db2f5bfa0cba8e9548aff5d";
    };
  };
  dependencies = [
    {
      drv = org_tukaani__xz__pom__1_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
