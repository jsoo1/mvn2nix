{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava__pom__13_0_1
}:
patchMavenJar {
  name = "com.google.guava:guava:jar:13.0.1";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "13.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/13.0.1/guava-13.0.1.jar";
      sha256 = "feb4b5b2e79a63b72ec47a693b1cf35cf1cea1f60a2bb2615bf21f74c7a60bb0";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava__pom__13_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
