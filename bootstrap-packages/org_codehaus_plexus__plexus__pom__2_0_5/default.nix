{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:2.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "2.0.5";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/2.0.5/plexus-2.0.5.pom";
        sha256 = "72b31dc11351a5bf4f5841221be5b1afc2b802ff96f23f2b77838f6d46cd3ad5";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
