{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__3
}:
patchMavenJar {
  name = "xerces:xercesImpl:pom:2.8.1";
  groupId = "xerces";
  artifactId = "xercesImpl";
  version = "2.8.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/xerces/xercesImpl/2.8.1/xercesImpl-2.8.1.pom";
      sha256 = "111d67b531a33faf90c06e9a2f9cc41caea5f1d9489e4d547313cd6042a61350";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
