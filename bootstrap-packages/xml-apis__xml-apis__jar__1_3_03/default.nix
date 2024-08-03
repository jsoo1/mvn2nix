{
  lib
, pkgs
, patchMavenJar
, xml-apis__xml-apis__pom__1_3_03
}:
patchMavenJar {
  name = "xml-apis:xml-apis:jar:1.3.03";
  groupId = "xml-apis";
  artifactId = "xml-apis";
  version = "1.3.03";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/xml-apis/xml-apis/1.3.03/xml-apis-1.3.03.jar";
      sha256 = "ec225a1c66d4505fecd1ad7644ce4477e626f439fd9230dbf8338cebdfc3a0e5";
    };
  };
  dependencies = [
    {
      drv = xml-apis__xml-apis__pom__1_3_03;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
