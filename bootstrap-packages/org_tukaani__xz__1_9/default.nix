{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.tukaani:xz:1.9";
  groupId = "org.tukaani";
  artifactId = "xz";
  version = "1.9";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/tukaani/xz/1.9/xz-1.9.jar";
        sha256 = "211b306cfc44f8f96df3a0a3ddaf75ba8c5289eed77d60d72f889bb855f535e5";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/tukaani/xz/1.9/xz-1.9.pom";
        sha256 = "093be1b03331bce2932d6825c37e98272d7621e6a9e9fb93289a002518b8dd5a";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
