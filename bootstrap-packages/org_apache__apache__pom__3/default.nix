{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:3";
  groupId = "org.apache";
  artifactId = "apache";
  version = "3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/3/apache-3.pom";
      sha256 = "393c50afb4b7aa6eb57e5377a55a1a0610b19f75b52ece01308db04a1187a20e";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
