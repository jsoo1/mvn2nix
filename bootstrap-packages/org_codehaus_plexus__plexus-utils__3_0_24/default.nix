{
  lib
, pkgs
, patchMavenJar
, org_sonatype_forge__forge-parent__pom__10
, org_codehaus_plexus__plexus__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:3.0.24";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.0.24";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.24/plexus-utils-3.0.24.jar";
        sha256 = "83ee748b12d06afb0ad4050a591132b3e8025fbb1990f1ed002e8b73293e69b4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.0.24/plexus-utils-3.0.24.pom";
        sha256 = "11067f6a75fded12bcdc8daf7a66ddd942ce289c3daf88a3fe0f8b12858a2ee6";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_forge__forge-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
