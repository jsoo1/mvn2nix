{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, aopalliance__aopalliance__jar__1_0
, com_google_guava__guava__jar__30_1-jre
, com_google_guava__failureaccess__jar__1_0_1
, com_google_guava__listenablefuture__jar__9999_0-empty-to-avoid-conflict-with-guava
, com_google_code_findbugs__jsr305__jar__3_0_1
, org_checkerframework__checker-qual__jar__3_5_0
, com_google_errorprone__error_prone_annotations__jar__2_3_4
, com_google_j2objc__j2objc-annotations__jar__1_3
, com_google_inject__guice__pom__5_1_0
}:
patchMavenJar {
  name = "com.google.inject:guice:jar:5.1.0";
  groupId = "com.google.inject";
  artifactId = "guice";
  version = "5.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/inject/guice/5.1.0/guice-5.1.0.jar";
      sha256 = "4130e50bfac48099c860f0d903b91860c81a249c90f38245f8fed58fc817bc26";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = aopalliance__aopalliance__jar__1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__jar__30_1-jre;
      scope = "compile";
      optional = false;
    }
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
      drv = com_google_code_findbugs__jsr305__jar__3_0_1;
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
      drv = com_google_inject__guice__pom__5_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
