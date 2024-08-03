{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_5_2
}:
patchMavenJar {
  name = "org.assertj:assertj-parent-pom:pom:2.2.7";
  groupId = "org.assertj";
  artifactId = "assertj-parent-pom";
  version = "2.2.7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/assertj/assertj-parent-pom/2.2.7/assertj-parent-pom-2.2.7.pom";
      sha256 = "0e946f486b972c080fc229f65373d15104af6674c630fd9f125c4fd72120773b";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_5_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
