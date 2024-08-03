{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:1.0.11";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "1.0.11";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/1.0.11/plexus-1.0.11.pom";
      sha256 = "5197630dcd2336f5b4ab8e6d26e5b8675f5ebd83bd8c91d6aba431b09627d626";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
