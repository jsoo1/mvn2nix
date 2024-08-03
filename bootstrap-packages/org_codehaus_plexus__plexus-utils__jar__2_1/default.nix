{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__2_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:2.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/2.1/plexus-utils-2.1.jar";
      sha256 = "35608df55aa672a195d6b01573a5630a315998b3bbd06310b20eb169113923aa";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
