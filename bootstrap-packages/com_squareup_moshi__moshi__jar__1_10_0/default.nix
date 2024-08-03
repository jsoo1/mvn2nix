{
  lib
, pkgs
, patchMavenJar
, com_squareup_okio__okio__jar__1_16_0
, com_squareup_moshi__moshi__pom__1_10_0
}:
patchMavenJar {
  name = "com.squareup.moshi:moshi:jar:1.10.0";
  groupId = "com.squareup.moshi";
  artifactId = "moshi";
  version = "1.10.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/squareup/moshi/moshi/1.10.0/moshi-1.10.0.jar";
      sha256 = "466b5c25b345821c0b78a3e35e6ce3221c9bf331d1feacc286902d5bfa231459";
    };
  };
  dependencies = [
    {
      drv = com_squareup_okio__okio__jar__1_16_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_squareup_moshi__moshi__pom__1_10_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
