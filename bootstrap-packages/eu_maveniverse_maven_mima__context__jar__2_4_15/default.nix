{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-util__jar__1_9_20
, eu_maveniverse_maven_mima__context__pom__2_4_15
}:
patchMavenJar {
  name = "eu.maveniverse.maven.mima:context:jar:2.4.15";
  groupId = "eu.maveniverse.maven.mima";
  artifactId = "context";
  version = "2.4.15";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/context/2.4.15/context-2.4.15.jar";
      sha256 = "3c3fdce32e5aa384f90e9139626423f6f265706585077ac226154a0dfc7126fa";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = eu_maveniverse_maven_mima__context__pom__2_4_15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
