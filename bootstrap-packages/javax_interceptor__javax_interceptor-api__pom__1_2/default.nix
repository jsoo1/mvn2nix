{
  lib
, pkgs
, patchMavenJar
, net_java__jvnet-parent__pom__3
}:
patchMavenJar {
  name = "javax.interceptor:javax.interceptor-api:pom:1.2";
  groupId = "javax.interceptor";
  artifactId = "javax.interceptor-api";
  version = "1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/interceptor/javax.interceptor-api/1.2/javax.interceptor-api-1.2.pom";
      sha256 = "f7124fce14a43c8a25a48f7503149eb13dd95422ff2ba7f750c5398747790211";
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
