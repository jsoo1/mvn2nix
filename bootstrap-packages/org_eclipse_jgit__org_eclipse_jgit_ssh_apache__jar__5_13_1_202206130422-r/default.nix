{
  lib
, pkgs
, patchMavenJar
, org_eclipse_jgit__org_eclipse_jgit__jar__5_13_1_202206130422-r
, com_googlecode_javaewah__JavaEWAH__jar__1_1_13
, org_apache_sshd__sshd-osgi__jar__2_7_0
, org_slf4j__jcl-over-slf4j__jar__1_7_30
, org_apache_sshd__sshd-sftp__jar__2_7_0
, org_apache_sshd__sshd-core__jar__2_7_0
, org_apache_sshd__sshd-common__jar__2_7_0
, net_i2p_crypto__eddsa__jar__0_3_0
, org_slf4j__slf4j-api__jar__1_7_30
, org_eclipse_jgit__org_eclipse_jgit_ssh_apache__pom__5_13_1_202206130422-r
}:
patchMavenJar {
  name = "org.eclipse.jgit:org.eclipse.jgit.ssh.apache:jar:5.13.1.202206130422-r";
  groupId = "org.eclipse.jgit";
  artifactId = "org.eclipse.jgit.ssh.apache";
  version = "5.13.1.202206130422-r";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/eclipse/jgit/org.eclipse.jgit.ssh.apache/5.13.1.202206130422-r/org.eclipse.jgit.ssh.apache-5.13.1.202206130422-r.jar";
      sha256 = "4a05dc5618b394073850671cb7b695c1e5d00556bc995c8b70b4e633e50487c5";
    };
  };
  dependencies = [
    {
      drv = org_eclipse_jgit__org_eclipse_jgit__jar__5_13_1_202206130422-r;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_googlecode_javaewah__JavaEWAH__jar__1_1_13;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-osgi__jar__2_7_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__jcl-over-slf4j__jar__1_7_30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-sftp__jar__2_7_0;
      scope = "compile";
      optional = false;
    }
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
      drv = net_i2p_crypto__eddsa__jar__0_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_30;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_jgit__org_eclipse_jgit_ssh_apache__pom__5_13_1_202206130422-r;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
