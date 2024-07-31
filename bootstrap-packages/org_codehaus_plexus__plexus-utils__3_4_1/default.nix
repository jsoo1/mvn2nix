{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__8
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.4.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.4.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.4.1/plexus-utils-3.4.1.jar";
        sha256 = "52d85e04b3918722af11d12855b4a8257df96a0e76c8f4e3852e6faa851f357b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.4.1/plexus-utils-3.4.1.pom";
        sha256 = "b144cff9b1c6259fec4fee5bdfc0f360d69c23abd4ea6e544533a949b69e3582";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
