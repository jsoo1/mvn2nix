{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__1_5_3
}:
patchMavenJar {
  name = "org.slf4j:slf4j-jdk14:pom:1.5.3";
  groupId = "org.slf4j";
  artifactId = "slf4j-jdk14";
  version = "1.5.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-jdk14/1.5.3/slf4j-jdk14-1.5.3.pom";
      sha256 = "9dd61f23050fad9ff518c89366abb30d9964de15b1b658c34176e586fcc66efb";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__1_5_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
