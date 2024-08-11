{
  lib
, pkgs
, patchMavenJar
, org_apache_struts__struts-parent__pom__1_3_8
}:
patchMavenJar {
  name = "struts-taglib";
  coordinates = "org.apache.struts:struts-taglib:pom:1.3.8";
  groupId = "org.apache.struts";
  artifactId = "struts-taglib";
  version = "1.3.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-taglib/1.3.8/struts-taglib-1.3.8.pom";
      sha256 = "93349fdf9c95458fad1b8105f20ce75155a37d2888fa7daeffbad1b30fa27ec0";
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
