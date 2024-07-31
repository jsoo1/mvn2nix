{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "javax.servlet:servlet-api:2.3";
  groupId = "javax.servlet";
  artifactId = "servlet-api";
  version = "2.3";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/servlet/servlet-api/2.3/servlet-api-2.3.jar";
        sha256 = "8478b902d0815ed066db860fb14cc5d404548d4b6348ab930b46270fcddeba68";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/javax/servlet/servlet-api/2.3/servlet-api-2.3.pom";
        sha256 = "abb294a8f064018ea226a5ad2176eaa9dbf1cde029a47815fd4a4049d1374160";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
