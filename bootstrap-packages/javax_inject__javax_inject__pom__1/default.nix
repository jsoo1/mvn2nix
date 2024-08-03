{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "javax.inject:javax.inject:pom:1";
  groupId = "javax.inject";
  artifactId = "javax.inject";
  version = "1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/inject/javax.inject/1/javax.inject-1.pom";
      sha256 = "943e12b100627804638fa285805a0ab788a680266531e650921ebfe4621a8bfa";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
