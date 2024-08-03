{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.11.0-M2";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.11.0-M2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.11.0-M2/junit-bom-5.11.0-M2.pom";
      sha256 = "4a3ffc4a4edcfec2cb5d619922706a9407161798571939f854dfda73e4e17cc8";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
