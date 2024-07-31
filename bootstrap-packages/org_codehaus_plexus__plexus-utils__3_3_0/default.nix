{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.3.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.3.0/plexus-utils-3.3.0.jar";
        sha256 = "76d174792540e2775af94d03d10fb2d3c776e2cd0ac0ebf427d3e570072bb9ce";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.3.0/plexus-utils-3.3.0.pom";
        sha256 = "79c9792073fdee3cdbebd61a76ba8c2dd11624a9f85d128bae56bda19e20475c";
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
