{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.slf4j:slf4j-parent:pom:1.7.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-parent";
  version = "1.7.13";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-parent/1.7.13/slf4j-parent-1.7.13.pom";
        sha256 = "1205f1d1c1b7ab4c2cedf7a49d455083feead2983d4f1e66d9207450cdac6318";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
