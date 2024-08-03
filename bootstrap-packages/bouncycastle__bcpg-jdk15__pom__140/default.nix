{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "bouncycastle:bcpg-jdk15:pom:140";
  groupId = "bouncycastle";
  artifactId = "bcpg-jdk15";
  version = "140";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/bouncycastle/bcpg-jdk15/140/bcpg-jdk15-140.pom";
      sha256 = "232f47c489bb6fbdc010521233cea97a170f451b72c1bc906794505ebb0213f6";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
