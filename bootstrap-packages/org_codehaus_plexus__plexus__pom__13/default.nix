{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:13";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "13";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/13/plexus-13.pom";
        sha256 = "575945dc08966c66eb03d5bae9135bd22ca3920a1865bb99d3ecd93bef55abd3";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
