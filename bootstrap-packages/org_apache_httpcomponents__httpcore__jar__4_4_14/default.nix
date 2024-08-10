{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcore__pom__4_4_14
}:
patchMavenJar {
  name = "org.apache.httpcomponents:httpcore:jar:4.4.14";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcore";
  version = "4.4.14";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.14/httpcore-4.4.14.jar";
      sha256 = "f956209e450cb1d0c51776dfbd23e53e9dd8db9a1298ed62b70bf0944ba63b28";
    };
  };
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcore__pom__4_4_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
