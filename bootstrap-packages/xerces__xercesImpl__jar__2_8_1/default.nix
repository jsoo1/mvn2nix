{
  lib
, pkgs
, patchMavenJar
, xml-apis__xml-apis__jar__1_3_03
, xerces__xercesImpl__pom__2_8_1
}:
patchMavenJar {
  name = "xerces:xercesImpl:jar:2.8.1";
  groupId = "xerces";
  artifactId = "xercesImpl";
  version = "2.8.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/xerces/xercesImpl/2.8.1/xercesImpl-2.8.1.jar";
      sha256 = "f95f3ad141bdff5a64962f6c26b4f18ecf0975cd3a68802712284b9e6db37e1b";
    };
  };
  dependencies = [
    {
      drv = xml-apis__xml-apis__jar__1_3_03;
      scope = "compile";
      optional = false;
    }
    {
      drv = xerces__xercesImpl__pom__2_8_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
