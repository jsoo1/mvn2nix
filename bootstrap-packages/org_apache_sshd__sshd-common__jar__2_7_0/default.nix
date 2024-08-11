{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_30
, org_slf4j__jcl-over-slf4j__jar__1_7_30
, org_apache_sshd__sshd-common__pom__2_7_0
}:
patchMavenJar {
  name = "sshd-common";
  coordinates = "org.apache.sshd:sshd-common:jar:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-common";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-common/2.7.0/sshd-common-2.7.0.jar";
      sha256 = "bbd38821c00f4b0d20271d8a4cd89336d7e7ac57458486c1c9c3798a6e4b873d";
    };
  };
  dependencies = [
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
      drv = org_apache_sshd__sshd-common__pom__2_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
