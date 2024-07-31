{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "eu.maveniverse.maven.parent:parent:pom:15";
  groupId = "eu.maveniverse.maven.parent";
  artifactId = "parent";
  version = "15";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/parent/parent/15/parent-15.pom";
        sha256 = "6f018c2ab04cd4b267e3315f45e81a652a311e21b5103383c413b6c79365b20c";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
