{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:6";
  groupId = "org.apache";
  artifactId = "apache";
  version = "6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/6/apache-6.pom";
      sha256 = "12edb5096e13f40c362d0bd40902589fa9586505123fa26799ce50b116fa5bb3";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
