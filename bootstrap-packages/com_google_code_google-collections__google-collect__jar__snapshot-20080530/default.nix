{
  lib
, pkgs
, patchMavenJar
, com_google_code_google-collections__google-collect__pom__snapshot-20080530
}:
patchMavenJar {
  name = "com.google.code.google-collections:google-collect:jar:snapshot-20080530";
  groupId = "com.google.code.google-collections";
  artifactId = "google-collect";
  version = "snapshot-20080530";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/google-collections/google-collect/snapshot-20080530/google-collect-snapshot-20080530.jar";
      sha256 = "8cc1f0813a186079f82d300a43156bdf852a88008f4f1a1fa71e788fb3b9a86d";
    };
  };
  dependencies = [
    {
      drv = com_google_code_google-collections__google-collect__pom__snapshot-20080530;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
