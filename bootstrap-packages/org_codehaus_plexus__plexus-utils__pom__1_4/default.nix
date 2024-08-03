{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_9
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:1.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.4/plexus-utils-1.4.pom";
      sha256 = "34f21927987db2bec1ec0a5059fe0e833c4acd1ada900591f946d6d49ca4aedc";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
