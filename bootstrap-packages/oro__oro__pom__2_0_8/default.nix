{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "oro";
  coordinates = "oro:oro:pom:2.0.8";
  groupId = "oro";
  artifactId = "oro";
  version = "2.0.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/oro/oro/2.0.8/oro-2.0.8.pom";
      sha256 = "9aa9dfeb2e85e1d5e7932c87140697cecc2b0fadd933d679fd420a2e43831a82";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
