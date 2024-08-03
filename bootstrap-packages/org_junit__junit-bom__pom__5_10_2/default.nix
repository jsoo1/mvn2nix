{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.10.2";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.10.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.10.2/junit-bom-5.10.2.pom";
      sha256 = "169dd904a4b0f6520cffe658cc62292bfe9f3c14a989fa92120724cde43a9968";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
