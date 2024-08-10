{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "myfaces:myfaces-parent:pom:1.1.0";
  groupId = "myfaces";
  artifactId = "myfaces-parent";
  version = "1.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/myfaces/myfaces-parent/1.1.0/myfaces-parent-1.1.0.pom";
      sha256 = "879a685728c27ec37e60b4b6a6f2bb6203fdccff5de5dad87dcac1958164d42b";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
