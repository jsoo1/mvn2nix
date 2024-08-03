{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_5_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:pom:1.5.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.5.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.5/plexus-component-annotations-1.5.5.pom";
      sha256 = "815f3ec316b8c5fa701385fdf4009bfb51e07d780e8f6a6e2afe720c52d7e292";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_5_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
