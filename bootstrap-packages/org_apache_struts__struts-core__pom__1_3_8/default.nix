{
  lib
, pkgs
, patchMavenJar
, org_apache_struts__struts-parent__pom__1_3_8
}:
patchMavenJar {
  name = "org.apache.struts:struts-core:pom:1.3.8";
  groupId = "org.apache.struts";
  artifactId = "struts-core";
  version = "1.3.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-core/1.3.8/struts-core-1.3.8.pom";
      sha256 = "9751850b8c81e1c20091ab5cbfa309491c7a59f816a8566c475f901a8f554e1e";
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
