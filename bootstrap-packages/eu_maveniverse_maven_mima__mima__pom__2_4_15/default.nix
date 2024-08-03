{
  lib
, pkgs
, patchMavenJar
, eu_maveniverse_maven_parent__parent__pom__15
}:
patchMavenJar {
  name = "eu.maveniverse.maven.mima:mima:pom:2.4.15";
  groupId = "eu.maveniverse.maven.mima";
  artifactId = "mima";
  version = "2.4.15";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/eu/maveniverse/maven/mima/mima/2.4.15/mima-2.4.15.pom";
      sha256 = "9d587bd5bdaff38e5b0c686d9381c1d1fe86cfddbd91f7dce55d0686878fe3ab";
    };
  };
  dependencies = [
    {
      drv = eu_maveniverse_maven_parent__parent__pom__15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
