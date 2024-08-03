{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-containers__pom__1_0-beta-3_0_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:pom:1.0-beta-3.0.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-beta-3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-beta-3.0.1/plexus-container-default-1.0-beta-3.0.1.pom";
      sha256 = "92b8d37523560d473d8307c7fdbd544ce397c76e8fddab615224004241a8e022";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-containers__pom__1_0-beta-3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
