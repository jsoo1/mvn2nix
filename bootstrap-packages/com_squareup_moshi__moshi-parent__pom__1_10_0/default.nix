{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.squareup.moshi:moshi-parent:pom:1.10.0";
  groupId = "com.squareup.moshi";
  artifactId = "moshi-parent";
  version = "1.10.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/squareup/moshi/moshi-parent/1.10.0/moshi-parent-1.10.0.pom";
      sha256 = "29780f320364095729f80c5ab8ce19a0e973d620ec665c476560eff383577a9e";
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
