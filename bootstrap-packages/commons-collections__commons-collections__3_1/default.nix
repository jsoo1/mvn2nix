{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "commons-collections:commons-collections:3.1";
  groupId = "commons-collections";
  artifactId = "commons-collections";
  version = "3.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.1/commons-collections-3.1.jar";
        sha256 = "c1547d185ba6880bcc2da261c5f7533512b6ffdbbc1898db5b793c0cb830fcf0";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/commons-collections/commons-collections/3.1/commons-collections-3.1.pom";
        sha256 = "59c9e5fc75e5790e56976c166a89f2cbdad99f76c49b92f74a1749689af726a2";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
