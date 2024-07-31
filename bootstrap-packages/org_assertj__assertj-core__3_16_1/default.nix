{
  lib
, pkgs
, patchMavenJar
, org_assertj__assertj-parent-pom__pom__2_2_7
}:
patchMavenJar {
  name = "org.assertj:assertj-core:3.16.1";
  groupId = "org.assertj";
  artifactId = "assertj-core";
  version = "3.16.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/assertj/assertj-core/3.16.1/assertj-core-3.16.1.jar";
        sha256 = "c02452510d56e88d067ba241997c27e7d8e99257bfa9d87e07e41723d7c8c36b";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/assertj/assertj-core/3.16.1/assertj-core-3.16.1.pom";
        sha256 = "2c68250496984e9d08393d4eb521bc75ac067ddca18cc52b42d1d34ee63dd479";
      };
    }
  ];
  dependencies = [
    {
      drv = org_assertj__assertj-parent-pom__pom__2_2_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
