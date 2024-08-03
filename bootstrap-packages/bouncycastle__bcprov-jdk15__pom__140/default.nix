{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "bouncycastle:bcprov-jdk15:pom:140";
  groupId = "bouncycastle";
  artifactId = "bcprov-jdk15";
  version = "140";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/bouncycastle/bcprov-jdk15/140/bcprov-jdk15-140.pom";
      sha256 = "6adf758c3a5b940583d61d166fec02ccdc969379b760d252fbc800699dd95492";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
