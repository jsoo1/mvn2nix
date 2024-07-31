{
  lib
, pkgs
, patchMavenJar
, net_java__jvnet-parent__pom__1
}:
patchMavenJar {
  name = "com.sun.mail:all:pom:1.6.2";
  groupId = "com.sun.mail";
  artifactId = "all";
  version = "1.6.2";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/sun/mail/all/1.6.2/all-1.6.2.pom";
        sha256 = "4b7e83aa9b77d65e007e97cb50f9b89cdb754faaf16411e5fd94d1e3dab76eb3";
      };
    }
  ];
  dependencies = [
    {
      drv = net_java__jvnet-parent__pom__1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
