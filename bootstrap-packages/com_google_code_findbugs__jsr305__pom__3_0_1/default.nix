{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.code.findbugs:jsr305:pom:3.0.1";
  groupId = "com.google.code.findbugs";
  artifactId = "jsr305";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/code/findbugs/jsr305/3.0.1/jsr305-3.0.1.pom";
      sha256 = "4170a761dc5bfd3981a8e6f7aab9e2acdce82d34fd5aa9bb11e3c090d25314ce";
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
