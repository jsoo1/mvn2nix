{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__2_4_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:2.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.4.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.4.2/plexus-classworlds-2.4.2.jar";
      sha256 = "c7cf8ef0b2d82fe1bb6e3fbcc2bab993118220f289548ce9b61a07ac47ec9826";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__2_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
