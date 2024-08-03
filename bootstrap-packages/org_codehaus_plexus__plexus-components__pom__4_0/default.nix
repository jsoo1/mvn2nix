{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:4.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "4.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/4.0/plexus-components-4.0.pom";
      sha256 = "1a5c0f95f65ed3e98edcf4f3b27c21cbcb14567384d9e4cf07f83a49675347ed";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
