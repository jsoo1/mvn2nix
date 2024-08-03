{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "junit:junit:pom:4.5";
  groupId = "junit";
  artifactId = "junit";
  version = "4.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/4.5/junit-4.5.pom";
      sha256 = "752e89353adc7d27cb6add712a28dad5828ae730e102ebac2d349af6e2ef75ae";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
