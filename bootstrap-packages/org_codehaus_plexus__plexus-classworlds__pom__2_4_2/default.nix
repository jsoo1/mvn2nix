{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_0_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:2.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.4.2/plexus-classworlds-2.4.2.pom";
      sha256 = "1954af19bf69eef14b81eac0b1a49907a67b1553f4f3803007abd940f42323f3";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
