{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-core__pom__4_4_13
}:
patchMavenJar {
  name = "httpcore";
  coordinates = "org.apache.httpcomponents:httpcore:pom:4.4.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcore";
  version = "4.4.13";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.pom";
      sha256 = "8f812d9fa7b72a3d4aa7f825278932a5df344b42a6d8398905879431a1bf9a97";
    };
  };
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcomponents-core__pom__4_4_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
