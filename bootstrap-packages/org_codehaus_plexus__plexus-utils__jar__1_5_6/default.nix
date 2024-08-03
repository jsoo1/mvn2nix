{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_5_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.5.6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.6/plexus-utils-1.5.6.jar";
      sha256 = "6990ec1b05c978c9940ebf7ec1b4dd911d16c524ee9f4a386a14ec0b07016ab4";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_5_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
