{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_0-alpha-20
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-api:pom:1.0-alpha-20";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-api";
  version = "1.0-alpha-20";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-20/plexus-component-api-1.0-alpha-20.pom";
      sha256 = "0d0d6284daf97e837b4cc45e9176e00f1dc76c14af069193dfc09b389dac37db";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-alpha-20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
