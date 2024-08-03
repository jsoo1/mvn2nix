{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.6.2";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.6.2/junit-bom-5.6.2.pom";
      sha256 = "e8ad601b3181b23787a18e71d26ac86a49c56dc5f85606764bc3c51b5e45fe13";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
