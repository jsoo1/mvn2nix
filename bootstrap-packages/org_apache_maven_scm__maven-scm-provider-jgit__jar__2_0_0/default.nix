{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__jar__1
, org_apache_maven_scm__maven-scm-provider-git-commons__jar__2_0_0
, org_codehaus_plexus__plexus-interactivity-api__jar__1_1
, org_eclipse_jgit__org_eclipse_jgit__jar__5_13_1_202206130422-r
, com_googlecode_javaewah__JavaEWAH__jar__1_1_13
, org_eclipse_jgit__org_eclipse_jgit_ssh_apache__jar__5_13_1_202206130422-r
, org_apache_sshd__sshd-osgi__jar__2_7_0
, org_apache_sshd__sshd-sftp__jar__2_7_0
, org_apache_sshd__sshd-core__jar__2_7_0
, org_apache_sshd__sshd-common__jar__2_7_0
, net_i2p_crypto__eddsa__jar__0_3_0
, org_slf4j__slf4j-api__jar__1_7_36
, org_slf4j__jcl-over-slf4j__jar__1_7_36
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven_scm__maven-scm-api__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-jgit__pom__2_0_0
}:
patchMavenJar {
  name = "maven-scm-provider-jgit";
  coordinates = "org.apache.maven.scm:maven-scm-provider-jgit:jar:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-jgit";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-jgit/2.0.0/maven-scm-provider-jgit-2.0.0.jar";
      sha256 = "92de12b75d6092256f3fd77b9203c2a42c44a8324e575f51ce24a44f7b8036a0";
    };
  };
  dependencies = [
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-git-commons__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
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
      drv = org_eclipse_jgit__org_eclipse_jgit_ssh_apache__jar__5_13_1_202206130422-r;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-osgi__jar__2_7_0;
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
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__jcl-over-slf4j__jar__1_7_36;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-api__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-jgit__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
