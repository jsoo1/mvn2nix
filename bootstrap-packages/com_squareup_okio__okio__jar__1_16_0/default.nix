{
  lib
, pkgs
, patchMavenJar
, com_squareup_okio__okio__pom__1_16_0
}:
patchMavenJar {
  name = "com.squareup.okio:okio:jar:1.16.0";
  groupId = "com.squareup.okio";
  artifactId = "okio";
  version = "1.16.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/squareup/okio/okio/1.16.0/okio-1.16.0.jar";
      sha256 = "ec0484ff1903640e3845c2b10abb99eff2d32308ffe3459e5f92309a451b9c7e";
    };
  };
  dependencies = [
    {
      drv = com_squareup_okio__okio__pom__1_16_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
