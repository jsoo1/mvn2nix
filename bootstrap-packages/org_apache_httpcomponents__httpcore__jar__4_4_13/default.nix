{
  lib
, pkgs
, patchMavenJar
, org_apache_httpcomponents__httpcore__pom__4_4_13
}:
patchMavenJar {
  name = "httpcore";
  coordinates = "org.apache.httpcomponents:httpcore:jar:4.4.13";
  groupId = "org.apache.httpcomponents";
  artifactId = "httpcore";
  version = "4.4.13";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.jar";
      sha256 = "e06e89d40943245fcfa39ec537cdbfce3762aecde8f9c597780d2b00c2b43424";
    };
  };
  dependencies = [
    {
      drv = org_apache_httpcomponents__httpcore__pom__4_4_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
