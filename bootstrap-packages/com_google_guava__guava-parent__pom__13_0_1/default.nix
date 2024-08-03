{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.guava:guava-parent:pom:13.0.1";
  groupId = "com.google.guava";
  artifactId = "guava-parent";
  version = "13.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava-parent/13.0.1/guava-parent-13.0.1.pom";
      sha256 = "dae8a1a5dfcccf372d3ede9b784279e9fd9437746d77e83d3d3f8ebbfb51d8ae";
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
