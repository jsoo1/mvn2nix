{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-parent__pom__2_0_13
}:
patchMavenJar {
  name = "org.slf4j:slf4j-api:pom:2.0.13";
  groupId = "org.slf4j";
  artifactId = "slf4j-api";
  version = "2.0.13";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/slf4j/slf4j-api/2.0.13/slf4j-api-2.0.13.pom";
      sha256 = "51805cfda80ca2ac82041b906d9865d39e9823e358a0eeb62379dfed475c1571";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-parent__pom__2_0_13;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
