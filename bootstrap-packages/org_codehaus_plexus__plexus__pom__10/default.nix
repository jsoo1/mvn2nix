{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/10/plexus-10.pom";
      sha256 = "bba9c521064b9ca132ce97cc1cc7eb4afc2dbe32bc88cb872c88e99f6162301f";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
