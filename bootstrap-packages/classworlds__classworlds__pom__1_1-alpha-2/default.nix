{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "classworlds:classworlds:pom:1.1-alpha-2";
  groupId = "classworlds";
  artifactId = "classworlds";
  version = "1.1-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/classworlds/classworlds/1.1-alpha-2/classworlds-1.1-alpha-2.pom";
      sha256 = "0cc647963b74ad1d7a37c9868e9e5a8f474e49297e1863582253a08a4c719cb1";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
