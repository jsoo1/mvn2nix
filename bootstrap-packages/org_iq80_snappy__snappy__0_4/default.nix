{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.iq80.snappy:snappy:0.4";
  groupId = "org.iq80.snappy";
  artifactId = "snappy";
  version = "0.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/iq80/snappy/snappy/0.4/snappy-0.4.jar";
        sha256 = "46a0c87d504ce9d6063e1ff6e4d20738feb49d8abf85b5071a7d18df4f11bac9";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/iq80/snappy/snappy/0.4/snappy-0.4.pom";
        sha256 = "a709ce17111e4149d9b79a5295644e0cd5a8355aec4b2ef4c0436aba7b25d08a";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
