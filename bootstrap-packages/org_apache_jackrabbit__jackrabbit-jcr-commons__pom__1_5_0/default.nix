{
  lib
, pkgs
, patchMavenJar
, org_apache_jackrabbit__jackrabbit-parent__pom__1_5_0
}:
patchMavenJar {
  name = "org.apache.jackrabbit:jackrabbit-jcr-commons:pom:1.5.0";
  groupId = "org.apache.jackrabbit";
  artifactId = "jackrabbit-jcr-commons";
  version = "1.5.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/jackrabbit/jackrabbit-jcr-commons/1.5.0/jackrabbit-jcr-commons-1.5.0.pom";
      sha256 = "b98ffbd2e2391f248dca74c366d277c55c5f8f8ec93385b724aaa65cc705f929";
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
