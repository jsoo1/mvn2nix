{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:2.0.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "2.0.2";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/2.0.2/plexus-2.0.2.pom";
        sha256 = "e246e2a062b5d989fdefc521c9c56431ba5554ff8d2344edee9218a34a546a33";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
