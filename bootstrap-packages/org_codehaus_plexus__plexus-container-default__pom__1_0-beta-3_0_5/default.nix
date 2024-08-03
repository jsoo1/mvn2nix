{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_0-beta-3_0_5
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:pom:1.0-beta-3.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-beta-3.0.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-beta-3.0.5/plexus-container-default-1.0-beta-3.0.5.pom";
      sha256 = "3d90bbd9f534020621c77453dcffdad4e761e42911c2be9adaeec724f9972a9c";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-beta-3_0_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
