{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:1";
  groupId = "org.apache";
  artifactId = "apache";
  version = "1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/1/apache-1.pom";
      sha256 = "1a787a6e40856c8befe1e35f63880126d9d41d7a6ed4c0e3408402f85072b0fb";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
