{
  lib
, pkgs
, patchMavenJar
, net_java__jvnet-parent__pom__3
}:
patchMavenJar {
  name = "javax.annotation:javax.annotation-api:pom:1.2";
  groupId = "javax.annotation";
  artifactId = "javax.annotation-api";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/annotation/javax.annotation-api/1.2/javax.annotation-api-1.2.pom";
      sha256 = "52d73f35f7e638ce3cb56546f879c20e7f7019f72aa20cde1fa80e97865dfd40";
    };
  };
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
