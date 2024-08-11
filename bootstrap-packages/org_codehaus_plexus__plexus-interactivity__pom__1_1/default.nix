{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__6_5
}:
patchMavenJar {
  name = "plexus-interactivity";
  coordinates = "org.codehaus.plexus:plexus-interactivity:pom:1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity/1.1/plexus-interactivity-1.1.pom";
      sha256 = "6511b83e0b3abee46b11da94c666c32818fbeb654809352647b5c0cc8122349b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__6_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
