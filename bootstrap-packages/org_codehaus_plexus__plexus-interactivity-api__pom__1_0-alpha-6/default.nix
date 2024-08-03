{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interactivity__pom__1_0-alpha-6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interactivity-api:pom:1.0-alpha-6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity-api";
  version = "1.0-alpha-6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity-api/1.0-alpha-6/plexus-interactivity-api-1.0-alpha-6.pom";
      sha256 = "decbf11e1ef3dba1d9864bd83f3a4f86268799802c2a7c40ae897bbc13b47cce";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interactivity__pom__1_0-alpha-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
