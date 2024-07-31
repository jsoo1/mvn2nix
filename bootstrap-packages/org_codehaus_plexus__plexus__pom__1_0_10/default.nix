{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:1.0.10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "1.0.10";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/1.0.10/plexus-1.0.10.pom";
        sha256 = "09b999a969e73525a6cc3ad2868ea744766e1d93b25c6c656d61a5ff9c881da9";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
