{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__pom__3_0_1
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:jar:3.0.1";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/3.0.1/jsr305-3.0.1.jar";
      sha256 = "c885ce34249682bc0236b4a7d56efcc12048e6135a5baf7a9cde8ad8cda13fcd";
    };
  };
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
