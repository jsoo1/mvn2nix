{
  lib
, pkgs
, patchMavenJar
, com_google_inject__guice-parent__pom__3_0
}:
patchMavenJar {
  name = "com.google.inject:guice:pom:3.0";
  groupId = "com.google.inject";
  artifactId = "guice";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/inject/guice/3.0/guice-3.0.pom";
      sha256 = "2288280c645a16e6a649119b3f43ebcac2a698216b805b2c6f0eeea39191edc0";
    };
  };
  dependencies = [
    {
      drv = com_google_inject__guice-parent__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
