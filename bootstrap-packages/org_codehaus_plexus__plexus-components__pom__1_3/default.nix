{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:1.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/1.3/plexus-components-1.3.pom";
      sha256 = "ca34c8d86394449ce46017d360954b270443ddaa7e62568db0cfce872315c830";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
