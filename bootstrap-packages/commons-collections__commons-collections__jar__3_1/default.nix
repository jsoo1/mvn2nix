{
  lib
, pkgs
, patchMavenJar
, commons-collections__commons-collections__pom__3_1
}:
patchMavenJar {
  name = "commons-collections";
  coordinates = "commons-collections:commons-collections:jar:3.1";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.1/commons-collections-3.1.jar";
      sha256 = "c1547d185ba6880bcc2da261c5f7533512b6ffdbbc1898db5b793c0cb830fcf0";
    };
  };
  dependencies = [
    {
      drv = commons-collections__commons-collections__pom__3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
