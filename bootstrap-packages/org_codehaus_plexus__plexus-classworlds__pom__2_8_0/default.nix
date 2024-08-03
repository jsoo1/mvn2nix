{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_1
, org_codehaus_plexus__plexus__pom__16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:2.8.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.8.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.8.0/plexus-classworlds-2.8.0.pom";
      sha256 = "648841a60891a12123b4f39c1562a8622b7e28849af5f1b58448113dbde358f9";
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
