{
  lib
, pkgs
, patchMavenJar
, org_apache_struts__struts-master__pom__4
}:
patchMavenJar {
  name = "struts-parent";
  coordinates = "org.apache.struts:struts-parent:pom:1.3.8";
  groupId = "org.apache.struts";
  artifactId = "struts-parent";
  version = "1.3.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-parent/1.3.8/struts-parent-1.3.8.pom";
      sha256 = "e6137fdb8a229c10d12b8aa4808c55ca4e07b4e759f2f352f3869dec1227c750";
    };
  };
  dependencies = [
    {
      drv = org_apache_struts__struts-master__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
