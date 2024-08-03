{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__pom__2_4
}:
patchMavenJar {
  name = "commons-io:commons-io:jar:2.4";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.4/commons-io-2.4.jar";
      sha256 = "cc6a41dc3eaacc9e440a6bd0d2890b20d36b4ee408fe2d67122f328bb6e01581";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__pom__2_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
