{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:48";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "48";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/48/commons-parent-48.pom";
      sha256 = "1e1f7de9370a7b7901f128f1dacd1422be74e3f47f9558b0f79e04c0637ca0b4";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
