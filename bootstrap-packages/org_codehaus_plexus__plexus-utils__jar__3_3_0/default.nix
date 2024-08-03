{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_3_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.3.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.3.0/plexus-utils-3.3.0.jar";
      sha256 = "76d174792540e2775af94d03d10fb2d3c776e2cd0ac0ebf427d3e570072bb9ce";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
