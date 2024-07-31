{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-core__pom__4_4_13
, org_apache_httpcomponents__httpcomponents-parent__pom__11
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpcore:4.4.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcore";
  version = "4.4.13";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.jar";
        sha256 = "e06e89d40943245fcfa39ec537cdbfce3762aecde8f9c597780d2b00c2b43424";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.pom";
        sha256 = "8f812d9fa7b72a3d4aa7f825278932a5df344b42a6d8398905879431a1bf9a97";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcomponents-core__pom__4_4_13;
      scope = "test";
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
