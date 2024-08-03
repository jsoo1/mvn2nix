{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__pom__2_16_1
}:
patchMavenJar {
  name = "commons-io:commons-io:jar:2.16.1";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.16.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.16.1/commons-io-2.16.1.jar";
      sha256 = "f41f7baacd716896447ace9758621f62c1c6b0a91d89acee488da26fc477c84f";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__pom__2_16_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
