{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:30";
  groupId = "org.apache";
  artifactId = "apache";
  version = "30";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/30/apache-30.pom";
      sha256 = "63dd4a393a9c0dfcb314efe83871a41d243bc8d200cbc7f2d197f30da78239d8";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
