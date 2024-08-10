{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:2";
  groupId = "org.apache";
  artifactId = "apache";
  version = "2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/2/apache-2.pom";
      sha256 = "c0242e48994aad79edfa2e983959d840aa6ba0930317c64c2dff4c3134b5e0e1";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
