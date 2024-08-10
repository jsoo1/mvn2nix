{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__pom__3_2_1
}:
patchMavenJar {
  name = "commons-collections:commons-collections:jar:3.2.1";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.2.1/commons-collections-3.2.1.jar";
      sha256 = "87363a4c94eaabeefd8b930cb059f66b64c9f7d632862f23de3012da7660047b";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__pom__3_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
