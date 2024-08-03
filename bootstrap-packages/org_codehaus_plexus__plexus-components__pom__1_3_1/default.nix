{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:1.3.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "1.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/1.3.1/plexus-components-1.3.1.pom";
      sha256 = "8cbcb2aacd7f4a7759866ce91b2f910310fbe5a586b5fc7b9bdb76af9257e7c4";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
