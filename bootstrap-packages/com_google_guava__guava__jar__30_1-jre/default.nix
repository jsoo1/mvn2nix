{
  lib
, pkgs
, patchMavenJar
, com_google_guava__failureaccess__jar__1_0_1
, com_google_guava__listenablefuture__jar__9999_0-empty-to-avoid-conflict-with-guava
, com_google_code_findbugs__jsr305__jar__3_0_2
, org_checkerframework__checker-qual__jar__3_5_0
, com_google_errorprone__error_prone_annotations__jar__2_3_4
, com_google_j2objc__j2objc-annotations__jar__1_3
, com_google_guava__guava__pom__30_1-jre
}:
patchMavenJar {
  name = "com.google.guava:guava:jar:30.1-jre";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "30.1-jre";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/30.1-jre/guava-30.1-jre.jar";
      sha256 = "e6dd072f9d3fe02a4600688380bd422bdac184caf6fe2418cfdd0934f09432aa";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__failureaccess__jar__1_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__listenablefuture__jar__9999_0-empty-to-avoid-conflict-with-guava;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__jar__3_0_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_checkerframework__checker-qual__jar__3_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_errorprone__error_prone_annotations__jar__2_3_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_j2objc__j2objc-annotations__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__pom__30_1-jre;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
