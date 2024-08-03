{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.guava:guava-parent:pom:18.0";
  groupId = "com.google.guava";
  artifactId = "guava-parent";
  version = "18.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava-parent/18.0/guava-parent-18.0.pom";
      sha256 = "a4accc8895e757f6a33f087e4fd0b661c5638ffe5e0728f298efe7d80551b166";
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
