{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__1_1_9
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interactivity:pom:1.0-alpha-6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity";
  version = "1.0-alpha-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity/1.0-alpha-6/plexus-interactivity-1.0-alpha-6.pom";
      sha256 = "5e9895a052c797936adff3afe3c1433080233595241788b8d6cd09b1dc62eaa5";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__1_1_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
