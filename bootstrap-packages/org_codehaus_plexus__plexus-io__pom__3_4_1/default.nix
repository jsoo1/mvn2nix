{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__10
}:
patchMavenJar {
  name = "plexus-io";
  coordinates = "org.codehaus.plexus:plexus-io:pom:3.4.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-io";
  version = "3.4.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.4.1/plexus-io-3.4.1.pom";
      sha256 = "7cd6047a0beec84b4d0d4c1a8ff4c9adb10c3f18e4fe18622f6ee7d4592b9a87";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__10;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
