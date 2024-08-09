{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apiguardian:apiguardian-api:pom:1.0.0";
  groupId = "org.apiguardian";
  artifactId = "apiguardian-api";
  version = "1.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apiguardian/apiguardian-api/1.0.0/apiguardian-api-1.0.0.pom";
      sha256 = "2ecc15d2614124cb9630c7173efcae1776cf43588a8f3ab1b04684b8dbe02489";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
