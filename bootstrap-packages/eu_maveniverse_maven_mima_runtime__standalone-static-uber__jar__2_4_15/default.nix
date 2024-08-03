{
  lib
, pkgs
, patchMavenJar
, eu_maveniverse_maven_mima_runtime__standalone-static-uber__pom__2_4_15
}:
patchMavenJar {
  name = "eu.maveniverse.maven.mima.runtime:standalone-static-uber:jar:2.4.15";
  groupId = "eu.maveniverse.maven.mima.runtime";
  artifactId = "standalone-static-uber";
  version = "2.4.15";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/runtime/standalone-static-uber/2.4.15/standalone-static-uber-2.4.15.jar";
      sha256 = "827eabaf6825e4ac3c871997a68e8b6bdb0b782155e224657c522c02d6a2634a";
    };
  };
  dependencies = [
    {
      drv = eu_maveniverse_maven_mima_runtime__standalone-static-uber__pom__2_4_15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
