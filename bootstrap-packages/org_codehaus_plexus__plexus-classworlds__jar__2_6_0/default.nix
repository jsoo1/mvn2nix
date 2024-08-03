{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__2_6_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:2.6.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.6.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.6.0/plexus-classworlds-2.6.0.jar";
      sha256 = "52f77c5ec49f787c9c417ebed5d6efd9922f44a202f217376e4f94c0d74f3549";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__2_6_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
