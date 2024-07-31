{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__5_1
, org_codehaus_plexus__plexus-containers__pom__2_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:2.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "2.0.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.jar";
        sha256 = "405eef6fc9188241ec88579c3e473f5c8997455c69bcd62e142492aca15106bc";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.pom";
        sha256 = "dcf193612b315713771e267b42de2d44de090be5945b2577345ed5ab8de2d271";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__5_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-containers__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
