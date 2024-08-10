{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__pom__2_1
}:
patchMavenJar {
  name = "commons-collections:commons-collections:jar:2.1";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/2.1/commons-collections-2.1.jar";
      sha256 = "443c2f6379ea2d9300af4733a3ad561032139c5a7890b5876c0b33212dd478f5";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__pom__2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
