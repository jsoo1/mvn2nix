{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__2
}:
patchMavenJar {
  name = "org.apache.struts:struts-master:pom:4";
  groupId = "org.apache.struts";
  artifactId = "struts-master";
  version = "4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/struts/struts-master/4/struts-master-4.pom";
      sha256 = "7a9ee24480959cfbef9ccc8ca9b55da3a2bf9cbed81518de340a21289d12cec6";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
