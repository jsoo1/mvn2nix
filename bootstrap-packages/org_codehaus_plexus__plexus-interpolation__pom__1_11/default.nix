{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__1_1_14
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:pom:1.11";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.11";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.11/plexus-interpolation-1.11.pom";
      sha256 = "b84d281f59b9da528139e0752a0e1cab0bd98d52c58442b00e45c9748e1d9eee";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__1_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
