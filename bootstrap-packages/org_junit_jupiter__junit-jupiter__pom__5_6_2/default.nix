{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter:pom:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter/5.6.2/junit-jupiter-5.6.2.pom";
      sha256 = "7d9ff2af9de09dd3a33429d2ab7d11570315882b2cf583e55b17b1cb32c561d0";
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
