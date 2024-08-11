{
  lib
, pkgs
, patchMavenJar
, org_apache_sshd__sshd-core__jar__2_7_0
, org_apache_sshd__sshd-common__jar__2_7_0
, org_slf4j__slf4j-api__jar__1_7_30
, org_slf4j__jcl-over-slf4j__jar__1_7_30
, org_apache_sshd__sshd-sftp__pom__2_7_0
}:
patchMavenJar {
  name = "sshd-sftp";
  coordinates = "org.apache.sshd:sshd-sftp:jar:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-sftp";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-sftp/2.7.0/sshd-sftp-2.7.0.jar";
      sha256 = "90692aaedbc6a1d7f5e61a03d811dd0cc6058b424a86e82d96843e2f5287b70c";
    };
  };
  dependencies = [
    {
      drv = org_apache_sshd__sshd-core__jar__2_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-common__jar__2_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__jcl-over-slf4j__jar__1_7_30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-sftp__pom__2_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
