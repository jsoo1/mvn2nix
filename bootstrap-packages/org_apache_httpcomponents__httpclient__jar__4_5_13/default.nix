{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcore__jar__4_4_13
, commons-logging__commons-logging__jar__1_2
, commons-codec__commons-codec__jar__1_11
, org_apache_httpcomponents__httpclient__pom__4_5_13
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpclient:jar:4.5.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpclient";
  version = "4.5.13";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.jar";
      sha256 = "6fe9026a566c6a5001608cf3fc32196641f6c1e5e1986d1037ccdbd5f31ef743";
    };
  };
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcore__jar__4_4_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpclient__pom__4_5_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
