{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-api:pom:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-api";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-api/5.6.2/junit-jupiter-api-5.6.2.pom";
      sha256 = "1d3b97e7a6fcd708fb42cada5a70131d08d5a505b15a51bce76aca6f4d67d23b";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_6_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
