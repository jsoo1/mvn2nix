{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia__pom__1_12_0
, org_apache_maven__maven-parent__pom__34
, org_apache_maven_doxia__doxia-logging-api__1_12_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-sink-api:1.12.0";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-sink-api";
  version = "1.12.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.jar";
        sha256 = "5dca6aaaa9e70d8a0766e143ddcf9db09de5fde0fbcc78cb635d74e764dfcca5";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-sink-api/1.12.0/doxia-sink-api-1.12.0.pom";
        sha256 = "26b51fddb69b5ca6e044cda28b8d1c1a37b6fafd0cfb9bfb15a919de57c671d5";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia__pom__1_12_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-logging-api__1_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
