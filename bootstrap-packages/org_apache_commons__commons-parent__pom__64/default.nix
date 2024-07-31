{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__30
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:64";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "64";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/64/commons-parent-64.pom";
        sha256 = "6f19638994e8357b4ed734696f992057efaafa1235673998133299798e2ccddb";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__30;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
