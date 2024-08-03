{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.junit:junit-bom:pom:5.5.2";
  groupId = "org.junit";
  artifactId = "junit-bom";
  version = "5.5.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/junit-bom/5.5.2/junit-bom-5.5.2.pom";
      sha256 = "5a49562a4704541e69d4ee316cd7eaf711cddb7cad5d0f886bf8a1fe98d6a9c5";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
