{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__jar__1_3_9
, com_google_guava__guava__pom__11_0_2
}:
patchMavenJar {
  name = "com.google.guava:guava:jar:11.0.2";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "11.0.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/11.0.2/guava-11.0.2.jar";
      sha256 = "e144a0ec7f5139c58d4f3729ccfb4240f9c576a1aa43790e4090e09316129ee1";
    };
  };
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__jar__1_3_9;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__pom__11_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
