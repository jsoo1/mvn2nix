{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:13";
  groupId = "org.apache";
  artifactId = "apache";
  version = "13";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/13/apache-13.pom";
        sha256 = "ff513db0361fd41237bef4784968bc15aae478d4ec0a9496f811072ccaf3841d";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
