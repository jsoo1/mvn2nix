{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.errorprone:error_prone_parent:pom:2.3.4";
  groupId = "com.google.errorprone";
  artifactId = "error_prone_parent";
  version = "2.3.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/errorprone/error_prone_parent/2.3.4/error_prone_parent-2.3.4.pom";
      sha256 = "40495b437a60d2398f0fdfc054b89d9c394a82347a274a0721c2e950a4302186";
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
