{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:3.0.2";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "3.0.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar";
        sha256 = "766ad2a0783f2687962c8ad74ceecc38a28b9f72a2d085ee438b7813e928d0c7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.pom";
        sha256 = "19889dbdf1b254b2601a5ee645b8147a974644882297684c798afe5d63d78dfe";
      };
    }
  ];
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
