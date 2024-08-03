{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:2.5.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.5.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.5.1/plexus-classworlds-2.5.1.pom";
      sha256 = "bc1f058e3aa1596fd67a203b3359ea42cd88b8d7cd2e1008ebf46cec1f61a769";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
