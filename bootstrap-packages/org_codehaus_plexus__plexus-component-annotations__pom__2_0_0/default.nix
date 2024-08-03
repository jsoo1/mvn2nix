{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__2_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:pom:2.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.pom";
      sha256 = "dcf193612b315713771e267b42de2d44de090be5945b2577345ed5ab8de2d271";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
