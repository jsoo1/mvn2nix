{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__9
}:
patchMavenJar {
  name = "com.google.guava:guava-parent:pom:26.0-android";
  groupId = "com.google.guava";
  artifactId = "guava-parent";
  version = "26.0-android";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/com/google/guava/guava-parent/26.0-android/guava-parent-26.0-android.pom";
        sha256 = "f8698ab46ca996ce889c1afc8ca4f25eb8ac6b034dc898d4583742360016cc04";
      };
    }
  ];
  dependencies = [
    {
      drv = org_sonatype_oss__oss-parent__pom__9;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
