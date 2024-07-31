{
  lib
, pkgs
, patchMavenJar
, commons-logging__commons-logging__1_2
, org_apache_httpcomponents__httpcore__4_4_13
, org_apache_httpcomponents__httpcomponents-parent__pom__11
, org_apache__apache__pom__21
, commons-codec__commons-codec__1_11
, org_apache_httpcomponents__httpcomponents-client__pom__4_5_13
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpclient:4.5.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpclient";
  version = "4.5.13";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.jar";
        sha256 = "6fe9026a566c6a5001608cf3fc32196641f6c1e5e1986d1037ccdbd5f31ef743";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.pom";
        sha256 = "78eb9ada74929fcd63d07adc4f49236841a45cc29d5f817bf45801f513fd7e6c";
      };
    }
  ];
  dependencies = [
    {
      drv = commons-logging__commons-logging__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcore__4_4_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcomponents-parent__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcomponents-client__pom__4_5_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
