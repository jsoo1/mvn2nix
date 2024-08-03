{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:11";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "11";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/11/commons-parent-11.pom";
      sha256 = "b9e0306f393460105b8a3fa5105250c5291b1efaa99954ace0ec1c783109a02a";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
