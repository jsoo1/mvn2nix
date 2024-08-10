{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "sslext:sslext:pom:1.2-0";
  groupId = "sslext";
  artifactId = "sslext";
  version = "1.2-0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/sslext/sslext/1.2-0/sslext-1.2-0.pom";
      sha256 = "75929e166762dcef294281f216b2bdcf866bbbc7835a59be1e68bf7032de016a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
