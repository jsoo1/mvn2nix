{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__17
, org_codehaus_plexus__plexus-xml__3_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:4.0.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "4.0.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.1/plexus-utils-4.0.1.jar";
        sha256 = "96b9cc44439191d2d0635974e2d44e768736b4fb2abcb65f94cd95e41912fa8b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.1/plexus-utils-4.0.1.pom";
        sha256 = "bc4235a95cd1ebae42644c81ebba9c1d4c52565f81e96ab204b6e56e3e378cc1";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__17;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-xml__3_0_0;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
