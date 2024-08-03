{
  lib
, pkgs
, patchMavenJar
, org_apache_jackrabbit__jackrabbit-parent__pom__1_5_0
}:
patchMavenJar {
  name = "org.apache.jackrabbit:jackrabbit-webdav:pom:1.5.0";
  groupId = "org.apache.jackrabbit";
  artifactId = "jackrabbit-webdav";
  version = "1.5.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/jackrabbit/jackrabbit-webdav/1.5.0/jackrabbit-webdav-1.5.0.pom";
      sha256 = "632163c10e2ab324fa7772cc2bf42099f9f421bfba1b18f433dc62991644201f";
    };
  };
  dependencies = [
    {
      drv = org_apache_jackrabbit__jackrabbit-parent__pom__1_5_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
