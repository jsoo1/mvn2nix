{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "junit:junit:pom:3.8.2";
  groupId = "junit";
  artifactId = "junit";
  version = "3.8.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/junit/junit/3.8.2/junit-3.8.2.pom";
      sha256 = "aede67999f02ac851c2a2ae8cec58f9d801f826ba20994df23a1d9fbecc47f0f";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
