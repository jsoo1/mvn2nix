{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__26_0-android
}:
patchMavenJar {
  name = "com.google.guava:failureaccess:pom:1.0.1";
  groupId = "com.google.guava";
  artifactId = "failureaccess";
  version = "1.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/failureaccess/1.0.1/failureaccess-1.0.1.pom";
      sha256 = "e96042ce78fecba0da2be964522947c87b40a291b5fd3cd672a434924103c4b9";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__26_0-android;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
