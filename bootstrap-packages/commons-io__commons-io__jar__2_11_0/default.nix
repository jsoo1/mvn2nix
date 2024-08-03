{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__pom__2_11_0
}:
patchMavenJar {
  name = "commons-io:commons-io:jar:2.11.0";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.11.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.11.0/commons-io-2.11.0.jar";
      sha256 = "961b2f6d87dbacc5d54abf45ab7a6e2495f89b75598962d8c723cea9bc210908";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__pom__2_11_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
