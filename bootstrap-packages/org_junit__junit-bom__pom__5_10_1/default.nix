{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.10.1";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.10.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.10.1/junit-bom-5.10.1.pom";
      sha256 = "21c4b0286f4b20069577ff4b20978a85c100ac8a46b6f1c8672fbaab337bc3f2";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
