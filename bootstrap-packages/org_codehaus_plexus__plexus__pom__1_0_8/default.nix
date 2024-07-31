{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:1.0.8";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "1.0.8";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/1.0.8/plexus-1.0.8.pom";
        sha256 = "a89a2f99088e244b3e52e35f19f5f7d3aba03dbb3cfaea044e2a694119e88f79";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
