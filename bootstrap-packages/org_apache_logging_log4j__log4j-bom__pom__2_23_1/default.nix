{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__31
, org_apache_logging__logging-parent__pom__10_6_0
}:
patchMavenJar {
  name = "org.apache.logging.log4j:log4j-bom:pom:2.23.1";
  groupId = "org.apache.logging.log4j";
  artifactId = "log4j-bom";
  version = "2.23.1";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/logging/log4j/log4j-bom/2.23.1/log4j-bom-2.23.1.pom";
        sha256 = "372396e0458d4cd32c096cadabe0cc9330ec10f4f57fa3be2e74f79b5e178a35";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_logging__logging-parent__pom__10_6_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
