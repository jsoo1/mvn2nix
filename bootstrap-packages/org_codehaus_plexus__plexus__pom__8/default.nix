{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:8";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "8";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/8/plexus-8.pom";
        sha256 = "ffa349db04e7abf65885bdc5a2062f4197c0ff9d3f1f4e2aa5720b77233f742c";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
