{
  lib
, pkgs
, patchMavenJar
, net_java__jvnet-parent__pom__3
}:
patchMavenJar {
  name = "javax.annotation:javax.annotation-api:1.3.2";
  groupId = "javax.annotation";
  artifactId = "javax.annotation-api";
  version = "1.3.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/annotation/javax.annotation-api/1.3.2/javax.annotation-api-1.3.2.jar";
        sha256 = "e04ba5195bcd555dc95650f7cc614d151e4bcd52d29a10b8aa2197f3ab89ab9b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/annotation/javax.annotation-api/1.3.2/javax.annotation-api-1.3.2.pom";
        sha256 = "46a4a251ca406e78e4853d7a2bae83282844a4992851439ee9a1f23716f06b97";
      };
    }
  ];
  dependencies = [
    {
      drv = net_java__jvnet-parent__pom__3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
