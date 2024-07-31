{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "com.google.guava:guava-parent:pom:33.2.1-jre";
  groupId = "com.google.guava";
  artifactId = "guava-parent";
  version = "33.2.1-jre";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/guava-parent/33.2.1-jre/guava-parent-33.2.1-jre.pom";
        sha256 = "9095f6d8ee3765950207510785830cc2280e781067915fa99cfe1740d4865c14";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
