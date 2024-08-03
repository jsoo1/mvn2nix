{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__4_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:4.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "4.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.0/plexus-utils-4.0.0.jar";
      sha256 = "270cd703b48c6e5c8c691f1875f22d62d22cfe072c73ae2f5814d83d68c1da0b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__4_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
