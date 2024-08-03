{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__8
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-sec-dispatcher:pom:2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-sec-dispatcher";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-sec-dispatcher/2.0/plexus-sec-dispatcher-2.0.pom";
      sha256 = "9b28bb307017938a94d06c85b2b099bc46912b859d084fb293e569f432eadb7c";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
