{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings:pom:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-settings";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings/2.2.1/maven-settings-2.2.1.pom";
      sha256 = "0d25a88a1b1e44801f8912206a40ff249cb5702ee87cf3d243d5213f7bcf534f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
