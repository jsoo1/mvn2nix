{
  lib
, pkgs
, patchMavenJar
, com_google_guava__failureaccess__jar__1_0_2
, com_google_guava__listenablefuture__jar__9999_0-empty-to-avoid-conflict-with-guava
, com_google_code_findbugs__jsr305__jar__3_0_2
, org_checkerframework__checker-qual__jar__3_42_0
, com_google_errorprone__error_prone_annotations__jar__2_26_1
, com_google_j2objc__j2objc-annotations__jar__3_0_0
, com_google_guava__guava__pom__33_2_1-jre
}:
patchMavenJar {
  name = "com.google.guava:guava:jar:33.2.1-jre";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "33.2.1-jre";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/33.2.1-jre/guava-33.2.1-jre.jar";
      sha256 = "452b2d9787b7d366fa8cf5ed9a1c40404542d05effa7a598da03bbbbb76d9f31";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__failureaccess__jar__1_0_2;
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
      drv = org_checkerframework__checker-qual__jar__3_42_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_errorprone__error_prone_annotations__jar__2_26_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_j2objc__j2objc-annotations__jar__3_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__pom__33_2_1-jre;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
