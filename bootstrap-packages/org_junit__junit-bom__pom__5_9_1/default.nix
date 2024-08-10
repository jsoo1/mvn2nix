{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.9.1";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.9.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.9.1/junit-bom-5.9.1.pom";
      sha256 = "b163c1cfc8fc1fd58b457a00d586c04c46e986d75904e9ca54c03a97d65b496c";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
