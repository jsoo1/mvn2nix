{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:15";
  groupId = "org.apache";
  artifactId = "apache";
  version = "15";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/15/apache-15.pom";
      sha256 = "36c2f2f979ac67b450c0cb480e4e9baf6b40f3a681f22ba9692287d1139ad494";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
