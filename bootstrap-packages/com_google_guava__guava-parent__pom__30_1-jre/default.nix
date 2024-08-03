{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.guava:guava-parent:pom:30.1-jre";
  groupId = "com.google.guava";
  artifactId = "guava-parent";
  version = "30.1-jre";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava-parent/30.1-jre/guava-parent-30.1-jre.pom";
      sha256 = "e2afb747ebc4fe2328d6a90fa88c5d8a83bb1e32061bb9b10ff43e2c47ad6e73";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
