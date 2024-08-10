{
  lib
, pkgs
, patchMavenJar
, org_springframework__spring-framework-bom__pom__5_3_6
, org_apache_sshd__sshd__pom__2_7_0
}:
patchMavenJar {
  name = "org.apache.sshd:sshd-common:pom:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-common";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-common/2.7.0/sshd-common-2.7.0.pom";
      sha256 = "64dbe2e2941949e54d8445b73a4e2541cbdbe16c49f2a559d2bbd5431f88ac59";
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
