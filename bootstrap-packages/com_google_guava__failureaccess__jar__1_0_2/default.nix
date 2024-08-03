{
  lib
, pkgs
, patchMavenJar
, com_google_guava__failureaccess__pom__1_0_2
}:
patchMavenJar {
  name = "com.google.guava:failureaccess:jar:1.0.2";
  groupId = "com.google.guava";
  artifactId = "failureaccess";
  version = "1.0.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/failureaccess/1.0.2/failureaccess-1.0.2.jar";
      sha256 = "8a8f81cf9b359e3f6dfa691a1e776985c061ef2f223c9b2c80753e1b458e8064";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__failureaccess__pom__1_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
