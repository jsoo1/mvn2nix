{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava__pom__16_0_1
}:
patchMavenJar {
  name = "com.google.guava:guava:jar:16.0.1";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "16.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/16.0.1/guava-16.0.1.jar";
      sha256 = "a896857d07845d38c7dc5bbc0457b6d9b0f62ecffda010e5e9ec12d561f676d3";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava__pom__16_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
