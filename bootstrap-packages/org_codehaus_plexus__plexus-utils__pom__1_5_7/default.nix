{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:1.5.7";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.7/plexus-utils-1.5.7.pom";
      sha256 = "33fac5d689f8aed46324072d72cf6a4552c3ca9ac899a41b4019482a9d406c3a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
