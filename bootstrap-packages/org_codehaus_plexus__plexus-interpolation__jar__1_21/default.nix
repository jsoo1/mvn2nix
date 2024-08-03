{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_21
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.21";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.21";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.21/plexus-interpolation-1.21.jar";
      sha256 = "aba7980581027ad5fc74a27ee4d64aad74932fdb32694967242d03fc50290d1f";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_21;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
