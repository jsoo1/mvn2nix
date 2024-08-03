{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:1.2-alpha-9";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.2-alpha-9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-9/plexus-classworlds-1.2-alpha-9.pom";
      sha256 = "224fe4d0c650f085c012f0a03c1995c598c7b5c506bc5350b727c75874330f00";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
