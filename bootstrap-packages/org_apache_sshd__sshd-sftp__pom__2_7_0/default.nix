{
  lib
, pkgs
, patchMavenJar
, org_testcontainers__testcontainers-bom__pom__1_15_2
, org_springframework__spring-framework-bom__pom__5_3_6
, org_apache_sshd__sshd__pom__2_7_0
}:
patchMavenJar {
  name = "org.apache.sshd:sshd-sftp:pom:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-sftp";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-sftp/2.7.0/sshd-sftp-2.7.0.pom";
      sha256 = "430e69acffda564c4d945d44e42053aa3bc8cab348c7f0bb2d185f6b5e35821a";
    };
  };
  dependencies = [
    {
      drv = org_testcontainers__testcontainers-bom__pom__1_15_2;
      scope = "test";
      optional = false;
    }
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
