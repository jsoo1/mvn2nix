{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__pom__2_5
}:
patchMavenJar {
  name = "commons-io:commons-io:jar:2.5";
  groupId = "commons-io";
  artifactId = "commons-io";
  version = "2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-io/commons-io/2.5/commons-io-2.5.jar";
      sha256 = "a10418348d234968600ccb1d988efcbbd08716e1d96936ccc1880e7d22513474";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__pom__2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
