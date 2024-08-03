{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__26_0-android
}:
patchMavenJar {
  name = "com.google.guava:listenablefuture:pom:9999.0-empty-to-avoid-conflict-with-guava";
  groupId = "com.google.guava";
  artifactId = "listenablefuture";
  version = "9999.0-empty-to-avoid-conflict-with-guava";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.pom";
      sha256 = "18d4b1db26153d4e55079ce1f76bb1fe05cdb862ef9954a88cbcc4ff38b8679b";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__26_0-android;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
