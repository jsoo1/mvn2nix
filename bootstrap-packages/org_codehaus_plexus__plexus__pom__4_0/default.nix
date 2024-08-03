{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:4.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "4.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/4.0/plexus-4.0.pom";
      sha256 = "0a1b692d7fcc90d6a45dae2e50f4660d48f7a44504f174aa60ef34fbe1327f6a";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
