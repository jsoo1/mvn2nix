{
  lib
, pkgs
, patchMavenJar
, eu_maveniverse_maven_mima_runtime__runtime__pom__2_4_15
}:
patchMavenJar {
  name = "eu.maveniverse.maven.mima.runtime:standalone-static-uber:pom:2.4.15";
  groupId = "eu.maveniverse.maven.mima.runtime";
  artifactId = "standalone-static-uber";
  version = "2.4.15";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/runtime/standalone-static-uber/2.4.15/standalone-static-uber-2.4.15.pom";
      sha256 = "1a4fa1a0ab25dbb4ef2f1e5dbdb3a99332095bee3a8451fe438edf180ba00b0e";
    };
  };
  dependencies = [
    {
      drv = eu_maveniverse_maven_mima_runtime__runtime__pom__2_4_15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
