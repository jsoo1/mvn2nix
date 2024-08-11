{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__2_1_0
}:
patchMavenJar {
  name = "plexus-container-default";
  coordinates = "org.codehaus.plexus:plexus-container-default:pom:2.1.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "2.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/2.1.0/plexus-container-default-2.1.0.pom";
      sha256 = "8b8c20e630bdcc795cc985024c4c1045c147be116052c2c975e30c608f7f3b45";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__2_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
