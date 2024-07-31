{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__26_0-android
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "com.google.guava:failureaccess:1.0.2";
  groupId = "com.google.guava";
  artifactId = "failureaccess";
  version = "1.0.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/failureaccess/1.0.2/failureaccess-1.0.2.jar";
        sha256 = "8a8f81cf9b359e3f6dfa691a1e776985c061ef2f223c9b2c80753e1b458e8064";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/failureaccess/1.0.2/failureaccess-1.0.2.pom";
        sha256 = "19ebc6f4bdb4edbb3d07b6ee994f846b54ef295582a9b5634719ffa9f31d03b2";
      };
    }
  ];
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__26_0-android;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_oss__oss-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
