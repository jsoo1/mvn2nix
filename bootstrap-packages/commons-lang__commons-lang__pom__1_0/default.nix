{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-lang:commons-lang:pom:1.0";
  groupId = "commons-lang";
  artifactId = "commons-lang";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-lang/commons-lang/1.0/commons-lang-1.0.pom";
      sha256 = "46c906e14087cdb033030c4447ef1c2a3d210b5c69b6ef0ce53989c2ac8409c3";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
