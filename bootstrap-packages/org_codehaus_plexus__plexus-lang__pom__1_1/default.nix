{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-lang:pom:1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-lang";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-lang/1.1/plexus-lang-1.1.pom";
      sha256 = "7a2f50fff4ed62af6d140483e8b7b707a9f6375091dcb6951960015ee8200930";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
