{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__3_0_20
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:3.0.20";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.20";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.20/plexus-utils-3.0.20.jar";
      sha256 = "8f3a655545fc5b4cbf12b5eb8a154fccb0c1144423a1450511f44005a3d574a2";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__3_0_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
