{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:31";
  groupId = "org.apache";
  artifactId = "apache";
  version = "31";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/apache/31/apache-31.pom";
      sha256 = "555d0c9eaa69c042aff924927b9381e8f8174136d355eead445224452e6291cc";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
