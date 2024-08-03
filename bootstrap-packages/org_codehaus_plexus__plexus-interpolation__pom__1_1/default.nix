{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_11
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:pom:1.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.1/plexus-interpolation-1.1.pom";
      sha256 = "72f6babf3ff5886b54a66d567305e85fc0fbecc7e0bd47eb81fa502c9447fae8";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
