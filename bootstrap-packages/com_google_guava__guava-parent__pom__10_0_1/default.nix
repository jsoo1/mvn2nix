{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.guava:guava-parent:pom:10.0.1";
  groupId = "com.google.guava";
  artifactId = "guava-parent";
  version = "10.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava-parent/10.0.1/guava-parent-10.0.1.pom";
      sha256 = "a3a4ec4c42839308905126340a882a7f37e7e124843ae8f5ea832e1aad9661ba";
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
