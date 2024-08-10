{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-beanutils:commons-beanutils:pom:1.6";
  groupId = "commons-beanutils";
  artifactId = "commons-beanutils";
  version = "1.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-beanutils/commons-beanutils/1.6/commons-beanutils-1.6.pom";
      sha256 = "f1309fdb6c64284485bc39188e55d0a30ddbb9311e4d4b6ee08bb038fa4b556d";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
