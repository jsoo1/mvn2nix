{
  lib
, pkgs
, patchMavenJar
, com_google_inject__guice-parent__pom__5_1_0
}:
patchMavenJar {
  name = "com.google.inject:guice:pom:5.1.0";
  groupId = "com.google.inject";
  artifactId = "guice";
  version = "5.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/inject/guice/5.1.0/guice-5.1.0.pom";
      sha256 = "b3b8dc65213d623fb70ed7958dbdd616324256ba836a31652560c388999fd9cd";
    };
  };
  dependencies = [
    {
      drv = com_google_inject__guice-parent__pom__5_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
