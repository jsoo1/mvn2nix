{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__jar__1_3_9
, com_google_guava__guava__pom__10_0_1
}:
patchMavenJar {
  name = "com.google.guava:guava:jar:10.0.1";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "10.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/10.0.1/guava-10.0.1.jar";
      sha256 = "7d228a16b9cd0d78ac7cc1a45cd6b65c9423c32c5e26f99f9bd2577d37396baa";
    };
  };
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__jar__1_3_9;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__pom__10_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
