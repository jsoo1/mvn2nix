{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__pom__2_0_1
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:jar:2.0.1";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "2.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/2.0.1/jsr305-2.0.1.jar";
      sha256 = "1e7f53fa5b8b5c807e986ba335665da03f18d660802d8bf061823089d1bee468";
    };
  };
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__pom__2_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
