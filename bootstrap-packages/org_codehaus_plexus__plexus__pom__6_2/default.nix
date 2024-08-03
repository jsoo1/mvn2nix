{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:6.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/6.2/plexus-6.2.pom";
      sha256 = "193be48e6ac6f88bef63e0c87b2ebd5691eb26330372331ed8fb03c5ae585147";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
