{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:2.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/2.0.0/plexus-2.0.0.pom";
      sha256 = "6a93acd52678054d8bab70f4eabd48082311de16939a125624243d5717a6215c";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
