{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:26";
  groupId = "org.apache";
  artifactId = "apache";
  version = "26";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/26/apache-26.pom";
      sha256 = "765b9c71832d2faad9611869c1f07263e3dfd000ebefdcd434d1f14cb2be3ea1";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
