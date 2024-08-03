{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__pom__1_6
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:1.6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.6/plexus-component-annotations-1.6.jar";
      sha256 = "2b3a6ca5f19a9ad490bc233f45e68d3093c8c01b4acc3c1d14bad4ca7c7ff438";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__1_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
