{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-parent:pom:7";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-parent";
  version = "7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-parent/7/jetty-parent-7.pom";
      sha256 = "0173d8dbfed2b8ab2a5b36b608a9c509ea0a3fbb4faca67ce7067680c895066a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
