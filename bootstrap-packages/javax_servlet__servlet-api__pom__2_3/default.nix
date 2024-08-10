{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "javax.servlet:servlet-api:pom:2.3";
  groupId = "javax.servlet";
  artifactId = "servlet-api";
  version = "2.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/servlet/servlet-api/2.3/servlet-api-2.3.pom";
      sha256 = "abb294a8f064018ea226a5ad2176eaa9dbf1cde029a47815fd4a4049d1374160";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
