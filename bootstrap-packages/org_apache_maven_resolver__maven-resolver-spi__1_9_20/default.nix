{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__1_9_20
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven_resolver__maven-resolver__pom__1_9_20
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver-spi:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver-spi";
  version = "1.9.20";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-spi/1.9.20/maven-resolver-spi-1.9.20.jar";
        sha256 = "04c3c41454298dff4f42ad2b69d5b18e74c3c9a329b4f501d717e157d56ebd11";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver-spi/1.9.20/maven-resolver-spi-1.9.20.pom";
        sha256 = "4cb4f2f5aa7e70de35cd9a666ed5ee8ca04287ca913e5717ed2c6d33eea83bc1";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver__pom__1_9_20;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
