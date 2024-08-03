{
  lib
, pkgs
, patchMavenJar
, org_assertj__assertj-core__pom__3_16_1
}:
patchMavenJar {
  name = "org.assertj:assertj-core:jar:3.16.1";
  groupId = "org.assertj";
  artifactId = "assertj-core";
  version = "3.16.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/assertj/assertj-core/3.16.1/assertj-core-3.16.1.jar";
      sha256 = "c02452510d56e88d067ba241997c27e7d8e99257bfa9d87e07e41723d7c8c36b";
    };
  };
  dependencies = [
    {
      drv = org_assertj__assertj-core__pom__3_16_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
