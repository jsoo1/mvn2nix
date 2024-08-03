{
  lib
, pkgs
, patchMavenJar
, xerces__xercesImpl__jar__2_8_1
, xml-apis__xml-apis__jar__1_3_03
, nekohtml__nekohtml__pom__1_9_6_2
}:
patchMavenJar {
  name = "nekohtml:nekohtml:jar:1.9.6.2";
  groupId = "nekohtml";
  artifactId = "nekohtml";
  version = "1.9.6.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/nekohtml/nekohtml/1.9.6.2/nekohtml-1.9.6.2.jar";
      sha256 = "fdff6cfa9ed9cc911c842a5d2395f209ec621ef1239d46810e9e495809d3ae09";
    };
  };
  dependencies = [
    {
      drv = xerces__xercesImpl__jar__2_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = xml-apis__xml-apis__jar__1_3_03;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__nekohtml__pom__1_9_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
