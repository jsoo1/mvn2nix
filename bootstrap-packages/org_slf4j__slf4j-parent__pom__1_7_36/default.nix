{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.slf4j:slf4j-parent:pom:1.7.36";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "1.7.36";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.7.36/slf4j-parent-1.7.36.pom";
        sha256 = "bb388d37fbcdd3cde64c3cede21838693218dc451f04040c5df360a78ed7e812";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
