{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus:pom:15";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus";
  version = "15";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus/15/plexus-15.pom";
      sha256 = "96dc0fbe73664a0f05c6770910473c1a12e1c112cb648364fca867daa689c21d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
