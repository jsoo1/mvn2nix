{
  lib
, pkgs
, patchMavenJar
, com_squareup_okio__okio-parent__pom__1_16_0
}:
patchMavenJar {
  name = "com.squareup.okio:okio:pom:1.16.0";
  groupId = "com.squareup.okio";
  artifactId = "okio";
  version = "1.16.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/squareup/okio/okio/1.16.0/okio-1.16.0.pom";
      sha256 = "1d2521621c0875123aa91311b2fe8edefd0ed93f66be6dfea18cc61bc5c99e36";
    };
  };
  dependencies = [
    {
      drv = com_squareup_okio__okio-parent__pom__1_16_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
