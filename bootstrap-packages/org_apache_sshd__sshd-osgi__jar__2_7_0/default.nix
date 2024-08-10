{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_30
, org_slf4j__jcl-over-slf4j__jar__1_7_30
, org_apache_sshd__sshd-osgi__pom__2_7_0
}:
patchMavenJar {
  name = "org.apache.sshd:sshd-osgi:jar:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-osgi";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-osgi/2.7.0/sshd-osgi-2.7.0.jar";
      sha256 = "17195d9df825d8c04286df1e2184f1e830bd8e9b5b7f788cb567eb3de65275d5";
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
      drv = org_apache_sshd__sshd-osgi__pom__2_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
