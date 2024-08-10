{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:1.1.12";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "1.1.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/1.1.12/plexus-components-1.1.12.pom";
      sha256 = "a854365061c28821ddf1a520b8a197991613fd1d56f50f42c468b789b4714f20";
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
