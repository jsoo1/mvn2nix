{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_0-alpha-16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-api:pom:1.0-alpha-16";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-api";
  version = "1.0-alpha-16";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-16/plexus-component-api-1.0-alpha-16.pom";
      sha256 = "c254b481f6d50db6c2e15df5f027612c127a4408898e78904ffacb2c7e507bdc";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-alpha-16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
