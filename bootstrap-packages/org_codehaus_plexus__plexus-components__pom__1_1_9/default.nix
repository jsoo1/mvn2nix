{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-components:pom:1.1.9";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "1.1.9";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/1.1.9/plexus-components-1.1.9.pom";
      sha256 = "f8c18b1a70bb21e3e62a750ebeec2ff4304049c390b33b0675dbd10b84bbe373";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
