{
  lib
, pkgs
, patchMavenJar
, eu_maveniverse_maven_parent__parent__pom__15
, eu_maveniverse_maven_mima__mima__pom__2_4_15
}:
patchMavenJar {
  name = "eu.maveniverse.maven.mima.runtime:runtime:pom:2.4.15";
  groupId = "eu.maveniverse.maven.mima.runtime";
  artifactId = "runtime";
  version = "2.4.15";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/runtime/runtime/2.4.15/runtime-2.4.15.pom";
        sha256 = "1750026dacf121507b685b2c61642a5cb3c58b8dc829a68f744e7be8c69d0525";
      };
    }
  ];
  dependencies = [
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
