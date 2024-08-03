{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_0_15
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.0.15";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.15";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.15/plexus-utils-3.0.15.jar";
      sha256 = "d0be76c5ce910134a7e07fd2aa48d9b677800ab0e95873f314b445c6f177c973";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_0_15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
