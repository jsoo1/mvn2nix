{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__1_3_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:pom:1.21";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.21";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.21/plexus-interpolation-1.21.pom";
      sha256 = "e078ac8780c6f2da5c11c5d2164bf2c2262112a89a82884de9c9886333267f7d";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__1_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
