{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_0
, org_codehaus_plexus__plexus__pom__15
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-languages:pom:1.2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-languages";
  version = "1.2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-languages/1.2.0/plexus-languages-1.2.0.pom";
      sha256 = "a28f034d79815cd7a4b107f66182c21ebf45fbb2fbe2c15697860b720c8a3bf7";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
