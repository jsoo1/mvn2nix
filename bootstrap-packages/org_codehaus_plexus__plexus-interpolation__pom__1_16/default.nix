{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-components__pom__1_3
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:pom:1.16";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.16";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.16/plexus-interpolation-1.16.pom";
      sha256 = "c93bf498f6de3699d37321d1850bd36b5b3b2e3ead3d572622d1fa48b553b22e";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-components__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
