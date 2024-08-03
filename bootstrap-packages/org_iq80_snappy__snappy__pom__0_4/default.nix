{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.iq80.snappy:snappy:pom:0.4";
  groupId = "org.iq80.snappy";
  artifactId = "snappy";
  version = "0.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/iq80/snappy/snappy/0.4/snappy-0.4.pom";
      sha256 = "a709ce17111e4149d9b79a5295644e0cd5a8355aec4b2ef4c0436aba7b25d08a";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
