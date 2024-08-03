{
  lib
, pkgs
, patchMavenJar
, com_squareup_moshi__moshi-parent__pom__1_10_0
}:
patchMavenJar {
  name = "com.squareup.moshi:moshi:pom:1.10.0";
  groupId = "com.squareup.moshi";
  artifactId = "moshi";
  version = "1.10.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/squareup/moshi/moshi/1.10.0/moshi-1.10.0.pom";
      sha256 = "0a3819835572dbccd53b89d77e73ceb6ac51f6bb7ae18f5e3ad0a45a4be53e7f";
    };
  };
  dependencies = [
    {
      drv = com_squareup_moshi__moshi-parent__pom__1_10_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
