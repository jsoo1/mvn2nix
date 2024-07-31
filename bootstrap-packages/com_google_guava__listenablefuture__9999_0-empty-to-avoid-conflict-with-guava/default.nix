{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__26_0-android
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "com.google.guava:listenablefuture:9999.0-empty-to-avoid-conflict-with-guava";
  groupId = "com.google.guava";
  artifactId = "listenablefuture";
  version = "9999.0-empty-to-avoid-conflict-with-guava";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar";
        sha256 = "b372a037d4230aa57fbeffdef30fd6123f9c0c2db85d0aced00c91b974f33f99";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.pom";
        sha256 = "18d4b1db26153d4e55079ce1f76bb1fe05cdb862ef9954a88cbcc4ff38b8679b";
      };
    }
  ];
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__26_0-android;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_oss__oss-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
