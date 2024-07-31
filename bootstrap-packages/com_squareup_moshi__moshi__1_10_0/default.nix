{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
, com_squareup_okio__okio__1_16_0
, com_squareup_moshi__moshi-parent__pom__1_10_0
}:
patchMavenJar {
  name = "com.squareup.moshi:moshi:1.10.0";
  groupId = "com.squareup.moshi";
  artifactId = "moshi";
  version = "1.10.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/squareup/moshi/moshi/1.10.0/moshi-1.10.0.jar";
        sha256 = "466b5c25b345821c0b78a3e35e6ce3221c9bf331d1feacc286902d5bfa231459";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/squareup/moshi/moshi/1.10.0/moshi-1.10.0.pom";
        sha256 = "0a3819835572dbccd53b89d77e73ceb6ac51f6bb7ae18f5e3ad0a45a4be53e7f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
    {
      drv = com_squareup_okio__okio__1_16_0;
      scope = "compile";
      optional = false;
    }
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
