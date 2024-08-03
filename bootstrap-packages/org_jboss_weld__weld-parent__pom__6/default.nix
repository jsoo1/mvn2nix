{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.jboss.weld:weld-parent:pom:6";
  groupId = "org.jboss.weld";
  artifactId = "weld-parent";
  version = "6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jboss/weld/weld-parent/6/weld-parent-6.pom";
      sha256 = "74ab64d978a3415cab65c3639b7c5ba5a20599ca5578251b748dd81c882a6088";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
