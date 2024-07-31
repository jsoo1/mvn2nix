{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-api__1_0-alpha-20
, org_codehaus_plexus__plexus__pom__1_0_10
, org_codehaus_plexus__plexus-classworlds__1_2-alpha-7
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:1.1.12";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "1.1.12";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/1.1.12/plexus-components-1.1.12.pom";
        sha256 = "a854365061c28821ddf1a520b8a197991613fd1d56f50f42c468b789b4714f20";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-api__1_0-alpha-20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__1_2-alpha-7;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__3_8_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
