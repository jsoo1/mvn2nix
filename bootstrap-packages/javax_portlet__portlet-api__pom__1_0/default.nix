{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "javax.portlet:portlet-api:pom:1.0";
  groupId = "javax.portlet";
  artifactId = "portlet-api";
  version = "1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/portlet/portlet-api/1.0/portlet-api-1.0.pom";
      sha256 = "45d4e3b10e89ae7b0f520aacb16db793697144780cab54098a7c8139bbe362a1";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
