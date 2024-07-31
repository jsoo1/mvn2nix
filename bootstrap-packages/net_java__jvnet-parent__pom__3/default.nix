{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "net.java:jvnet-parent:pom:3";
  groupId = "net.java";
  artifactId = "jvnet-parent";
  version = "3";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/net/java/jvnet-parent/3/jvnet-parent-3.pom";
        sha256 = "30f5789efa39ddbf96095aada3fc1260c4561faf2f714686717cb2dc5049475a";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
