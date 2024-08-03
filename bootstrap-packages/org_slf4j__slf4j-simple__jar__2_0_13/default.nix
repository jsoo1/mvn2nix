{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__2_0_13
, org_slf4j__slf4j-simple__pom__2_0_13
}:
patchMavenJar {
  name = "org.slf4j:slf4j-simple:jar:2.0.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-simple";
  version = "2.0.13";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-simple/2.0.13/slf4j-simple-2.0.13.jar";
      sha256 = "3153fe1d689cffb94f1530b58470c306685ba68844de8857116e3b6ebb81d9f7";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__2_0_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-simple__pom__2_0_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
