{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "maven-filtering";
  coordinates = "org.apache.maven.shared:maven-filtering:pom:3.3.2";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-filtering";
  version = "3.3.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-filtering/3.3.2/maven-filtering-3.3.2.pom";
      sha256 = "6c0550e9d7f92b3ca458a60b64a810111da223ca1e945d9db2d2ef46432e26f5";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
