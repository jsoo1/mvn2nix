{
  lib
, pkgs
, patchMavenJar
, com_google_guava__failureaccess__pom__1_0_1
}:
patchMavenJar {
  name = "com.google.guava:failureaccess:jar:1.0.1";
  groupId = "com.google.guava";
  artifactId = "failureaccess";
  version = "1.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/failureaccess/1.0.1/failureaccess-1.0.1.jar";
      sha256 = "a171ee4c734dd2da837e4b16be9df4661afab72a41adaf31eb84dfdaf936ca26";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__failureaccess__pom__1_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
