{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__pom__3_0_2
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:jar:3.0.2";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "3.0.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar";
      sha256 = "766ad2a0783f2687962c8ad74ceecc38a28b9f72a2d085ee438b7813e928d0c7";
    };
  };
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__pom__3_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
