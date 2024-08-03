{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.jboss:jboss-parent:pom:4";
  groupId = "org.jboss";
  artifactId = "jboss-parent";
  version = "4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/jboss/jboss-parent/4/jboss-parent-4.pom";
      sha256 = "7c0dec6af8081baea5176d88cff9bd6b7d7e21001a095e98ff9b7e105cf1a1a3";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
