{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-fileupload:commons-fileupload:pom:1.0";
  groupId = "commons-fileupload";
  artifactId = "commons-fileupload";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-fileupload/commons-fileupload/1.0/commons-fileupload-1.0.pom";
      sha256 = "692bf484a7e6414cce80b54c416d94d2873651eb4a31b1d17c5e8d6a270fd627";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
