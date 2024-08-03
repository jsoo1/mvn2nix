{
  lib
, pkgs
, patchMavenJar
, org_sonatype_aether__aether-parent__pom__1_7
}:
patchMavenJar {
  name = "org.sonatype.aether:aether-api:pom:1.7";
  groupId = "org.sonatype.aether";
  artifactId = "aether-api";
  version = "1.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/sonatype/aether/aether-api/1.7/aether-api-1.7.pom";
      sha256 = "e855b04820e58822bda1ab448f7b29e2fccf363f1b2ca95c8c05f2d625b28928";
    };
  };
  dependencies = [
    {
      drv = org_sonatype_aether__aether-parent__pom__1_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
