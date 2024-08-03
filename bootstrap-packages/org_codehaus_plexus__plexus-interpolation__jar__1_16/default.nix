{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__pom__1_16
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:jar:1.16";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.16";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.16/plexus-interpolation-1.16.jar";
      sha256 = "bc4053a078ec83523a010c321c0d6852b43ddc4e076a6500b8bc133b6c69e561";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__pom__1_16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
