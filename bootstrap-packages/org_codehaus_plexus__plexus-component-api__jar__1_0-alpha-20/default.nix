{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-7
, junit__junit__jar__3_8_1
, org_codehaus_plexus__plexus-component-api__pom__1_0-alpha-20
}:
patchMavenJar {
  name = "plexus-component-api";
  coordinates = "org.codehaus.plexus:plexus-component-api:jar:1.0-alpha-20";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-api";
  version = "1.0-alpha-20";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-api/1.0-alpha-20/plexus-component-api-1.0-alpha-20.jar";
      sha256 = "15a74eafb9ff9e2f81e24db66ac59d28d17bd174e56b1e699422b7b3a6211dc9";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_2-alpha-7;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-api__pom__1_0-alpha-20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
