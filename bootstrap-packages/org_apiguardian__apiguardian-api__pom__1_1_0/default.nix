{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apiguardian:apiguardian-api:pom:1.1.0";
  groupId = "org.apiguardian";
  artifactId = "apiguardian-api";
  version = "1.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apiguardian/apiguardian-api/1.1.0/apiguardian-api-1.1.0.pom";
      sha256 = "a945b9cb5cd9b77b2c711844e659c43ec070ef59d9f509fa9f4c1861b4862711";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
