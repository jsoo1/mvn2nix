{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_5_7
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.5.7";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.7";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.7/plexus-utils-1.5.7.jar";
      sha256 = "e3de94b341b720ec2f414be9dcea72eb724b574d9e7dd0e35c1914d18d6bb90a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_5_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
