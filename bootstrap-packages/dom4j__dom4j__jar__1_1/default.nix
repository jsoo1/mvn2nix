{
  lib
, pkgs
, patchMavenJar
, dom4j__dom4j__pom__1_1
}:
patchMavenJar {
  name = "dom4j:dom4j:jar:1.1";
  groupId = "dom4j";
  artifactId = "dom4j";
  version = "1.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/dom4j/dom4j/1.1/dom4j-1.1.jar";
      sha256 = "50bd5c21b5fbd27b8bbb5f8050544b53f49a4480fd347ce9c46d55c706015156";
    };
  };
  dependencies = [
    {
      drv = dom4j__dom4j__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
