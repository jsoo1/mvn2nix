{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "dom4j:dom4j:1.1";
  groupId = "dom4j";
  artifactId = "dom4j";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/dom4j/dom4j/1.1/dom4j-1.1.jar";
        sha256 = "50bd5c21b5fbd27b8bbb5f8050544b53f49a4480fd347ce9c46d55c706015156";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/dom4j/dom4j/1.1/dom4j-1.1.pom";
        sha256 = "03c18c93b1df85cbce3a21a17d9b27e399e27478c1421071f5348c58bd0ab61f";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
