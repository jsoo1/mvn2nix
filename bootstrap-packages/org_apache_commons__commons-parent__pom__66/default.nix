{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:66";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "66";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/66/commons-parent-66.pom";
        sha256 = "48fd6dc846e56b1f408660d163e75300f9e384bb63be482a8082a21d72a8db9c";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
