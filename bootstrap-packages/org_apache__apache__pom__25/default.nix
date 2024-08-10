{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:25";
  groupId = "org.apache";
  artifactId = "apache";
  version = "25";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/25/apache-25.pom";
      sha256 = "e68fc19a48cec582a6732fd0b10dbfe9feca25060963def89e547f8a3759d379";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
