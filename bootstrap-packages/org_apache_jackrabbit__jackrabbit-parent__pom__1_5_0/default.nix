{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.jackrabbit:jackrabbit-parent:pom:1.5.0";
  groupId = "org.apache.jackrabbit";
  artifactId = "jackrabbit-parent";
  version = "1.5.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/jackrabbit/jackrabbit-parent/1.5.0/jackrabbit-parent-1.5.0.pom";
        sha256 = "e565e436c317461a9db20d73ae3ebdd12d7418613002c085bfbf0397090b61db";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
