{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:2.0.6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "2.0.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/2.0.6/plexus-2.0.6.pom";
      sha256 = "bea12e747708d25e73410ca1c731ebdfa102e8bdb6ec7d81bd4522583b234bcc";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
