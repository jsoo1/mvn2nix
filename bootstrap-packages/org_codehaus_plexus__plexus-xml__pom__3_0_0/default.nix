{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_3
, org_codehaus_plexus__plexus__pom__13
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-xml:pom:3.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-xml";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-xml/3.0.0/plexus-xml-3.0.0.pom";
      sha256 = "c07d67161cdf7f8fdce4cd921be5d3cccb9e2c259105ca1afeb772cbcb0cbec5";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_3;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
