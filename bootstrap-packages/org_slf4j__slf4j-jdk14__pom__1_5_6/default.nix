{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_5_6
}:
patchMavenJar {
  name = "org.slf4j:slf4j-jdk14:pom:1.5.6";
  groupId = "org.slf4j";
  artifactId = "slf4j-jdk14";
  version = "1.5.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-jdk14/1.5.6/slf4j-jdk14-1.5.6.pom";
      sha256 = "85f97344eeeed2714eda6f800aa712c1aa7405b0d7f98e207499363f82f37eec";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_5_6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
