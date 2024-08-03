{
  lib
, pkgs
, patchMavenJar
, org_sonatype_oss__oss-parent__pom__7
}:
patchMavenJar {
  name = "com.google.guava:guava-parent:pom:11.0.2";
  groupId = "com.google.guava";
  artifactId = "guava-parent";
  version = "11.0.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/com/google/guava/guava-parent/11.0.2/guava-parent-11.0.2.pom";
      sha256 = "1aa31e223080d87ef8f70fa4693022a49cf5567d41039c10467e8236cf6d7a06";
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
