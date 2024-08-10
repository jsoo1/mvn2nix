{
  lib
, pkgs
, patchMavenJar
, org_apache_struts__struts-parent__pom__1_3_8
}:
patchMavenJar {
  name = "org.apache.struts:struts-tiles:pom:1.3.8";
  groupId = "org.apache.struts";
  artifactId = "struts-tiles";
  version = "1.3.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-tiles/1.3.8/struts-tiles-1.3.8.pom";
      sha256 = "d678f338f62da055bafb93483ec8ddcbed7c2762649e31766ad8347f59ef1c6c";
    };
  };
  dependencies = [
    {
      drv = org_apache_struts__struts-parent__pom__1_3_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
