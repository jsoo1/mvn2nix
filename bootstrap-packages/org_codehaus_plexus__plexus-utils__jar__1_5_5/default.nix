{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_5_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.5.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.5/plexus-utils-1.5.5.jar";
      sha256 = "92f38b0af28629847e461060eae84bcd7441995a5ecba785400754164fbbd1dc";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_5_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
