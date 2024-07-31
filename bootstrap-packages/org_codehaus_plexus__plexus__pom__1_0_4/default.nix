{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:1.0.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "1.0.4";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/1.0.4/plexus-1.0.4.pom";
        sha256 = "2242fd02d12b1ca73267fb3d89863025517200e7a4ee426cba4667d0172c74c3";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
