{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.3.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.3.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.3.1/plexus-utils-3.3.1.jar";
        sha256 = "4b570fcdbe5a894f249d2eb9b929358a9c88c3e548d227a80010461930222f2a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.3.1/plexus-utils-3.3.1.pom";
        sha256 = "5e583878df905b5f33a230ef690a52b8f19dab9cc892bedee069f3d8af4e960a";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__5_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
