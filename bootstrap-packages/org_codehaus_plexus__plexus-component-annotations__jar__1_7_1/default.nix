{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__pom__1_7_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:1.7.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.7.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.7.1/plexus-component-annotations-1.7.1.jar";
      sha256 = "a7fee9435db716bff593e9fb5622bcf9f25e527196485929b0cd4065c43e61df";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__1_7_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
