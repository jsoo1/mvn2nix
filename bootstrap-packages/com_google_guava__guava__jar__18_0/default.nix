{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava__pom__18_0
}:
patchMavenJar {
  name = "com.google.guava:guava:jar:18.0";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "18.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/18.0/guava-18.0.jar";
      sha256 = "d664fbfc03d2e5ce9cab2a44fb01f1d0bf9dfebeccc1a473b1f9ea31f79f6f99";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava__pom__18_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
