{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "avalon-framework";
  coordinates = "avalon-framework:avalon-framework:pom:4.1.3";
  groupId = "avalon-framework";
  artifactId = "avalon-framework";
  version = "4.1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/avalon-framework/avalon-framework/4.1.3/avalon-framework-4.1.3.pom";
      sha256 = "c6c971b146ec8e596e660e64d5517aae02e34c3cce240de44bb92ccd98f046bf";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
