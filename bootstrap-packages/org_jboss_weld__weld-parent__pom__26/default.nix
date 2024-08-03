{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.jboss.weld:weld-parent:pom:26";
  groupId = "org.jboss.weld";
  artifactId = "weld-parent";
  version = "26";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jboss/weld/weld-parent/26/weld-parent-26.pom";
      sha256 = "13023471418b890557b982e4cbab2b5f6967adf1cebe54bf630fe201a63963cc";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
