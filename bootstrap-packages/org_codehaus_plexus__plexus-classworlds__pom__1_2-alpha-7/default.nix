{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_9
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:1.2-alpha-7";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.2-alpha-7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.2-alpha-7/plexus-classworlds-1.2-alpha-7.pom";
      sha256 = "2a0abfc63ed5c6216356255aa7c572723087938879934aca1ce11f17c24ce156";
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
