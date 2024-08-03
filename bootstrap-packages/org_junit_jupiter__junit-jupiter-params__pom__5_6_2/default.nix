{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_6_2
}:
patchMavenJar {
  name = "org.junit.jupiter:junit-jupiter-params:pom:5.6.2";
  groupId = "org.junit.jupiter";
  artifactId = "junit-jupiter-params";
  version = "5.6.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/junit/jupiter/junit-jupiter-params/5.6.2/junit-jupiter-params-5.6.2.pom";
      sha256 = "507183bb3af1cc88dc546e7efd2ba5f7a5e227f26698d98000cb009a65daa77a";
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
