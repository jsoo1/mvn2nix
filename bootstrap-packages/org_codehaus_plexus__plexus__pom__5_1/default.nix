{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:5.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "5.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/5.1/plexus-5.1.pom";
      sha256 = "a343e44ff5796aed0ea60be11454c935ce20ab1c5f164acc8da574482dcbc7e9";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
