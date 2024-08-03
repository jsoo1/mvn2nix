{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__pom__1_5_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:1.5.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "1.5.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.5/plexus-component-annotations-1.5.5.jar";
      sha256 = "4df7a6a7be64b35bbccf60b5c115697f9ea3421d22674ae67135dde375fcca1f";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__1_5_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
