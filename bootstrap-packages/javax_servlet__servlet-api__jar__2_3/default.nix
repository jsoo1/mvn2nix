{
  lib
, pkgs
, patchMavenJar
, javax_servlet__servlet-api__pom__2_3
}:
patchMavenJar {
  name = "servlet-api";
  coordinates = "javax.servlet:servlet-api:jar:2.3";
  groupId = "javax.servlet";
  artifactId = "servlet-api";
  version = "2.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/servlet/servlet-api/2.3/servlet-api-2.3.jar";
      sha256 = "8478b902d0815ed066db860fb14cc5d404548d4b6348ab930b46270fcddeba68";
    };
  };
  dependencies = [
    {
      drv = javax_servlet__servlet-api__pom__2_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
