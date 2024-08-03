{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.tukaani:xz:pom:1.9";
  groupId = "org.tukaani";
  artifactId = "xz";
  version = "1.9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/tukaani/xz/1.9/xz-1.9.pom";
      sha256 = "093be1b03331bce2932d6825c37e98272d7621e6a9e9fb93289a002518b8dd5a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
