{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "aopalliance:aopalliance:1.0";
  groupId = "aopalliance";
  artifactId = "aopalliance";
  version = "1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.jar";
        sha256 = "0addec670fedcd3f113c5c8091d783280d23f75e3acb841b61a9cdb079376a08";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/aopalliance/aopalliance/1.0/aopalliance-1.0.pom";
        sha256 = "26e82330157d6b844b67a8064945e206581e772977183e3e31fec6058aa9a59b";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
