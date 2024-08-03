{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__1
}:
patchMavenJar {
  name = "xml-apis:xml-apis:pom:1.3.03";
  groupId = "xml-apis";
  artifactId = "xml-apis";
  version = "1.3.03";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/xml-apis/xml-apis/1.3.03/xml-apis-1.3.03.pom";
      sha256 = "c60d217791859e4ba0c9ff7da41755cdf9cefe3f0a261e8aa96a1c44d3096fad";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
