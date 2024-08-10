{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-client__pom__4_5_13
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpclient:pom:4.5.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpclient";
  version = "4.5.13";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpclient/4.5.13/httpclient-4.5.13.pom";
      sha256 = "78eb9ada74929fcd63d07adc4f49236841a45cc29d5f817bf45801f513fd7e6c";
    };
  };
  dependencies = [
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
