{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.7.2";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.7.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.7.2/junit-bom-5.7.2.pom";
      sha256 = "cd14aaa869991f82021c585d570d31ff342bcba58bb44233b70193771b96487b";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
