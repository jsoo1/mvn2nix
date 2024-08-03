{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "aopalliance:aopalliance:pom:1.0";
  groupId = "aopalliance";
  artifactId = "aopalliance";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.pom";
      sha256 = "26e82330157d6b844b67a8064945e206581e772977183e3e31fec6058aa9a59b";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
