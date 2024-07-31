{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.xerial.snappy:snappy-java:1.1.10.5";
  groupId = "org.xerial.snappy";
  artifactId = "snappy-java";
  version = "1.1.10.5";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/xerial/snappy/snappy-java/1.1.10.5/snappy-java-1.1.10.5.jar";
        sha256 = "0f3f1857ed33116583f480b4df5c0218836c47bfbc9c6221c0d73f356decf37b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/xerial/snappy/snappy-java/1.1.10.5/snappy-java-1.1.10.5.pom";
        sha256 = "65f5b83e48d9e494482ad03f184c9e57af348d78f4aebe00cd6afdc67681ed8d";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
