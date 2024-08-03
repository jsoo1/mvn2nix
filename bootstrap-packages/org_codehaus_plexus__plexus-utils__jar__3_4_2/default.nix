{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_4_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.4.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.4.2/plexus-utils-3.4.2.jar";
      sha256 = "f957f13604ea1686de805801862f339dbbb6eab9a66f9cc7e4a5c5b27e4fcecc";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
