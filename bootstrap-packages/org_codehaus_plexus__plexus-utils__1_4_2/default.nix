{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_11
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:1.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.4.2/plexus-utils-1.4.2.jar";
        sha256 = "6ba8c1c0a075a37d812c581ede2e12d8f890b8d3b4676721f1b7257c91cb71a3";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.4.2/plexus-utils-1.4.2.pom";
        sha256 = "93d6675b2cf585c9c1148f1964156306c2573adfc1181c7219bd42a54a133771";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
