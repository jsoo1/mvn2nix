{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.squareup.okio:okio-parent:pom:1.16.0";
  groupId = "com.squareup.okio";
  artifactId = "okio-parent";
  version = "1.16.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/squareup/okio/okio-parent/1.16.0/okio-parent-1.16.0.pom";
      sha256 = "0b7424c3faab3bb5333096e39957f88f8d50ce0c98bfba71a3fcfaa0aaf0552c";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
