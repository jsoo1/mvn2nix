{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.sat4j:org.sat4j.pb:pom:2.0.4";
  groupId = "org.sat4j";
  artifactId = "org.sat4j.pb";
  version = "2.0.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sat4j/org.sat4j.pb/2.0.4/org.sat4j.pb-2.0.4.pom";
      sha256 = "51d0e45275663a544eca2f637ad0359cab3ad2873a57e55b4e0dd4bfd09b4479";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
