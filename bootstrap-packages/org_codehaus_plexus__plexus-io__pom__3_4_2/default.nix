{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_1
, org_codehaus_plexus__plexus__pom__16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-io:pom:3.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-io";
  version = "3.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-io/3.4.2/plexus-io-3.4.2.pom";
      sha256 = "aafc90ce29fe79bc6a0aeafb2bf6bdeaf979a1b8211493428a2290228170355d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
