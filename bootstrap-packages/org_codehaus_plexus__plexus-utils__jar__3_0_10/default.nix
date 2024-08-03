{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_0_10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.0.10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.10";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.10/plexus-utils-3.0.10.jar";
      sha256 = "9fc0794062be85c3606000b326ea0339e8620d15949cb96a254b85a8f958e955";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_0_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
