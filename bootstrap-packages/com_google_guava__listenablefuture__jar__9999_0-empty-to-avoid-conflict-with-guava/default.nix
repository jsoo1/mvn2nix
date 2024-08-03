{
  lib
, pkgs
, patchMavenJar
, com_google_guava__listenablefuture__pom__9999_0-empty-to-avoid-conflict-with-guava
}:
patchMavenJar {
  name = "com.google.guava:listenablefuture:jar:9999.0-empty-to-avoid-conflict-with-guava";
  groupId = "com.google.guava";
  artifactId = "listenablefuture";
  version = "9999.0-empty-to-avoid-conflict-with-guava";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/listenablefuture/9999.0-empty-to-avoid-conflict-with-guava/listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar";
      sha256 = "b372a037d4230aa57fbeffdef30fd6123f9c0c2db85d0aced00c91b974f33f99";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__listenablefuture__pom__9999_0-empty-to-avoid-conflict-with-guava;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
