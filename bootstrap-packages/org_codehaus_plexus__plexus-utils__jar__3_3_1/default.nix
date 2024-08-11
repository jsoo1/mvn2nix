{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_3_1
}:
patchMavenJar {
  name = "plexus-utils";
  coordinates = "org.codehaus.plexus:plexus-utils:jar:3.3.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.3.1/plexus-utils-3.3.1.jar";
      sha256 = "4b570fcdbe5a894f249d2eb9b929358a9c88c3e548d227a80010461930222f2a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
