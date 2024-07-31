{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__19
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:47";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "47";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/47/commons-parent-47.pom";
        sha256 = "8a8ecb570553bf9f1ffae211a8d4ca9ee630c17afe59293368fba7bd9b42fcb7";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__19;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
