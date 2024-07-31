{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcomponents-parent__pom__11
, org_apache_httpcomponents__httpcomponents-core__pom__4_4_14
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpcore:4.4.14";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcore";
  version = "4.4.14";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.jar";
        sha256 = "f956209e450cb1d0c51776dfbd23e53e9dd8db9a1298ed62b70bf0944ba63b28";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.pom";
        sha256 = "55716398a978f10203f9e25c8aefc0580daf7f0907c6ed0aead81ec5fb6b7fd8";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcomponents-parent__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_httpcomponents__httpcomponents-core__pom__4_4_14;
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
