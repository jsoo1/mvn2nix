{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__pom__1_3_9
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:jar:1.3.9";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "1.3.9";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/1.3.9/jsr305-1.3.9.jar";
      sha256 = "905721a0eea90a81534abb7ee6ef4ea2e5e645fa1def0a5cd88402df1b46c9ed";
    };
  };
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__pom__1_3_9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
