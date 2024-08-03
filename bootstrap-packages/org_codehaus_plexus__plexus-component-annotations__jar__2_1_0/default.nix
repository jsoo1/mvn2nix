{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__pom__2_1_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:2.1.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "2.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.1.0/plexus-component-annotations-2.1.0.jar";
      sha256 = "bde3617ce9b5bcf9584126046080043af6a4b3baea40a3b153f02e7bbc32acac";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__2_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
