{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:16";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "16";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/16/plexus-16.pom";
        sha256 = "68d4eed65a3dbbc342ed80dd138fbe9c67cb7fb4c2abc4f5201cdb5b9f645868";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
