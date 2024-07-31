{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.apache.geronimo.specs:geronimo-jms_1.1_spec:1.0";
  groupId = "org.apache.geronimo.specs";
  artifactId = "geronimo-jms_1.1_spec";
  version = "1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/geronimo/specs/geronimo-jms_1.1_spec/1.0/geronimo-jms_1.1_spec-1.0.jar";
        sha256 = "293180afed47a7276b2180cd37baf2c89d41452b982d8b9b11fb0271303e1bc1";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/geronimo/specs/geronimo-jms_1.1_spec/1.0/geronimo-jms_1.1_spec-1.0.pom";
        sha256 = "c922b8594495bc8331381d0940985196e5e8f201e5a3a8b66bfad180853721ff";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
