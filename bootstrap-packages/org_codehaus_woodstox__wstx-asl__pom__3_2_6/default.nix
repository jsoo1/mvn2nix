{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.woodstox:wstx-asl:pom:3.2.6";
  groupId = "org.codehaus.woodstox";
  artifactId = "wstx-asl";
  version = "3.2.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/woodstox/wstx-asl/3.2.6/wstx-asl-3.2.6.pom";
      sha256 = "784db534cc3c5051f88198e8251da9c8b13625e0eb365a347e1085387d8203b1";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
