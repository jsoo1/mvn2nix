{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.4/plexus-utils-1.4.jar";
      sha256 = "b607ff463bea2d5ea235bc1ba736a40ce9bb71e2fcce5a10e54b98400bad50fb";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
