{
  lib
, pkgs
, patchMavenJar
, eu_maveniverse_maven_mima__mima__pom__2_4_15
}:
patchMavenJar {
  name = "eu.maveniverse.maven.mima:context:pom:2.4.15";
  groupId = "eu.maveniverse.maven.mima";
  artifactId = "context";
  version = "2.4.15";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/context/2.4.15/context-2.4.15.pom";
      sha256 = "c286ba2dc939a4b0ca1bd1eeb20119ef130423c875ccf727264b978f0bc2eecd";
    };
  };
  dependencies = [
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
