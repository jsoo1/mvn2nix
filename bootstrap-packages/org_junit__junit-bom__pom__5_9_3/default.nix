{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.9.3";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.9.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.9.3/junit-bom-5.9.3.pom";
      sha256 = "4d0329cd9e72f2420e5ca15724cbfe6ffa6e5fd2888361516271190fdc342ed7";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
