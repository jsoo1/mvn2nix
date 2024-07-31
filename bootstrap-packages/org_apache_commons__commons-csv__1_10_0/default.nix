{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__29
, org_apache_commons__commons-parent__pom__56
}:
patchMavenJar {
  name = "org.apache.commons:commons-csv:1.10.0";
  groupId = "org.apache.commons";
  artifactId = "commons-csv";
  version = "1.10.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-csv/1.10.0/commons-csv-1.10.0.jar";
        sha256 = "2d06e6a07a636baf777ad8e659256f2119109dde23551c9b80c5422d424b808c";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-csv/1.10.0/commons-csv-1.10.0.pom";
        sha256 = "243541ad501e43ef09bacf7a86c87f7c3ed018d34a823ff5f54e5a8c5811094f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-parent__pom__56;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
