{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interactivity__pom__1_1
}:
patchMavenJar {
  name = "plexus-interactivity-api";
  coordinates = "org.codehaus.plexus:plexus-interactivity-api:pom:1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity-api";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity-api/1.1/plexus-interactivity-api-1.1.pom";
      sha256 = "7fc95f5fc5876313729c407d85cb803e6e005bbe32f5f39757cc81ff5746c95f";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interactivity__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
