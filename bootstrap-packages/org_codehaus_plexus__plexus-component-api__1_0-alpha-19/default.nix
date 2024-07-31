{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
, org_codehaus_plexus__plexus-containers__pom__1_0-alpha-19
, org_codehaus_plexus__plexus-classworlds__1_2-alpha-7
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-api:1.0-alpha-19";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-api";
  version = "1.0-alpha-19";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-19/plexus-component-api-1.0-alpha-19.jar";
        sha256 = "a9d96e7c8240901169559ce2a6fc2f1621d61331d4fde0859d77afbddf8f8991";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-19/plexus-component-api-1.0-alpha-19.pom";
        sha256 = "c014484b5c3f888559dd039ec4990c0badf085c92599bd30ea996a5aa73b1a20";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-alpha-19;
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
