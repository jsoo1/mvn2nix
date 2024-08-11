{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-core__pom__4_4_14
}:
patchMavenJar {
  name = "httpcore";
  coordinates = "org.apache.httpcomponents:httpcore:pom:4.4.14";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcore";
  version = "4.4.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.pom";
      sha256 = "55716398a978f10203f9e25c8aefc0580daf7f0907c6ed0aead81ec5fb6b7fd8";
    };
  };
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcomponents-core__pom__4_4_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
