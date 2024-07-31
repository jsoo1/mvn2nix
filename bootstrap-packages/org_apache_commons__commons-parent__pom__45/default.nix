{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__19
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:45";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "45";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/45/commons-parent-45.pom";
        sha256 = "9c88623ecfa91f012c673ee4622c0eeb4367e5e0d222d960f76cd208b1a4fda6";
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
