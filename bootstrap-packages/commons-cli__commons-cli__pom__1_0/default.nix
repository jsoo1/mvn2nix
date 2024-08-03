{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-cli:commons-cli:pom:1.0";
  groupId = "commons-cli";
  artifactId = "commons-cli";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-cli/commons-cli/1.0/commons-cli-1.0.pom";
      sha256 = "97ee40f4e80ca5ecc20162f4e97ee1adfeac1b45ba88b923d5a521e487c9c407";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
