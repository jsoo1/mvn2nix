{
  lib
, pkgs
, patchMavenJar
, org_springframework__spring-framework-bom__pom__5_3_6
, org_apache_sshd__sshd__pom__2_7_0
}:
patchMavenJar {
  name = "sshd-core";
  coordinates = "org.apache.sshd:sshd-core:pom:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-core";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-core/2.7.0/sshd-core-2.7.0.pom";
      sha256 = "d5b8bfc8e10fbf3e8105b45c4dc9c7a6b17c8a70403be604caba5fd02b53e1b9";
    };
  };
  dependencies = [
    {
      drv = org_springframework__spring-framework-bom__pom__5_3_6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd__pom__2_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
