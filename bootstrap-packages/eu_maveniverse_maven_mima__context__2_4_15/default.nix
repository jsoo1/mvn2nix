{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__1_9_20
, eu_maveniverse_maven_parent__parent__pom__15
, eu_maveniverse_maven_mima__mima__pom__2_4_15
, org_apache_maven_resolver__maven-resolver-util__1_9_20
}:
patchMavenJar {
  name = "eu.maveniverse.maven.mima:context:2.4.15";
  groupId = "eu.maveniverse.maven.mima";
  artifactId = "context";
  version = "2.4.15";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/context/2.4.15/context-2.4.15.jar";
        sha256 = "3c3fdce32e5aa384f90e9139626423f6f265706585077ac226154a0dfc7126fa";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/context/2.4.15/context-2.4.15.pom";
        sha256 = "c286ba2dc939a4b0ca1bd1eeb20119ef130423c875ccf727264b978f0bc2eecd";
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
      drv = eu_maveniverse_maven_parent__parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_mima__mima__pom__2_4_15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__1_9_20;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
