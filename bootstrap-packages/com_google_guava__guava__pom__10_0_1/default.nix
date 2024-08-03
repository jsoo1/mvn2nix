{
  lib
, pkgs
, patchMavenJar
, com_google_guava__guava-parent__pom__10_0_1
}:
patchMavenJar {
  name = "com.google.guava:guava:pom:10.0.1";
  groupId = "com.google.guava";
  artifactId = "guava";
  version = "10.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava/10.0.1/guava-10.0.1.pom";
      sha256 = "66004371bf79dd1ee82716097e2d6a7245a95baf75f90cb80e0689412b26f921";
    };
  };
  dependencies = [
    {
      drv = com_google_guava__guava-parent__pom__10_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
