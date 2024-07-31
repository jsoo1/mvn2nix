{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache:apache:pom:7";
  groupId = "org.apache";
  artifactId = "apache";
  version = "7";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/apache/7/apache-7.pom";
        sha256 = "1397ce1db433adc9f223dbf07496d133681448751f4ae29e58f68e78fb4b6c25";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
