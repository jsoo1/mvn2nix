{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "plexus";
  coordinates = "org.codehaus.plexus:plexus:pom:6.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "6.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/6.5/plexus-6.5.pom";
      sha256 = "737ff2200498dd54c920712404caa4426d38639d05014ff3ef1b3e7c5bd91397";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
