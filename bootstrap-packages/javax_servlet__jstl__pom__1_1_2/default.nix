{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "jstl";
  coordinates = "javax.servlet:jstl:pom:1.1.2";
  groupId = "javax.servlet";
  artifactId = "jstl";
  version = "1.1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/javax/servlet/jstl/1.1.2/jstl-1.1.2.pom";
      sha256 = "5555091df907ffd5e7f9aa04df2305c3b9250a2f42a38a5019233da28bf12b31";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
