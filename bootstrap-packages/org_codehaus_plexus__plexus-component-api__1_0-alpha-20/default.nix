{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
, org_codehaus_plexus__plexus-containers__pom__1_0-alpha-20
, org_codehaus_plexus__plexus-classworlds__1_2-alpha-7
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-api:1.0-alpha-20";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-api";
  version = "1.0-alpha-20";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-20/plexus-component-api-1.0-alpha-20.jar";
        sha256 = "15a74eafb9ff9e2f81e24db66ac59d28d17bd174e56b1e699422b7b3a6211dc9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-20/plexus-component-api-1.0-alpha-20.pom";
        sha256 = "0d0d6284daf97e837b4cc45e9176e00f1dc76c14af069193dfc09b389dac37db";
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
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-alpha-20;
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
