{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
}:
patchMavenJar {
  name = "org.apache.logging:logging-parent:pom:10.6.0";
  groupId = "org.apache.logging";
  artifactId = "logging-parent";
  version = "10.6.0";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/logging-parent/10.6.0/logging-parent-10.6.0.pom";
        sha256 = "f827475840a64083b585ec8dbbf7093b6fd02624293cec37d56edf9fc354109e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
