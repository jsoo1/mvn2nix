{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__16
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:39";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "39";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/39/commons-parent-39.pom";
      sha256 = "87cd27e1a02a5c3eb6d85059ce98696bb1b44c2b8b650f0567c86df60fa61da7";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
