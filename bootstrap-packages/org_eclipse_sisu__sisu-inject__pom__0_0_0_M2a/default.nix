{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "org.eclipse.sisu:sisu-inject:pom:0.0.0.M2a";
  groupId = "org.eclipse.sisu";
  artifactId = "sisu-inject";
  version = "0.0.0.M2a";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/sisu/sisu-inject/0.0.0.M2a/sisu-inject-0.0.0.M2a.pom";
      sha256 = "6ea322bae1e866d7917baf572458ebdb07a620b83b0cb623f9297d7ec91c4718";
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
