{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.10.0";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.10.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.10.0/junit-bom-5.10.0.pom";
      sha256 = "e006dd8894f9fc7b75fc32bb12fe5ed8be65667d5b454f99e2e0b8c5bb8d30b3";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
