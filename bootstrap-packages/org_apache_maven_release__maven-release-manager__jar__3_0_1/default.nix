{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_release__maven-release-api__jar__3_0_1
, org_eclipse_aether__aether-util__jar__1_0_0_v20140518
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_codehaus_plexus__plexus-interactivity-api__jar__1_1
, org_codehaus_plexus__plexus-interpolation__jar__1_26
, org_codehaus_plexus__plexus-sec-dispatcher__jar__2_0
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-cipher__jar__2_0
, org_slf4j__slf4j-api__jar__1_7_36
, org_apache_maven_shared__maven-invoker__jar__3_2_0
, org_apache_commons__commons-lang3__jar__3_12_0
, org_eclipse_aether__aether-api__jar__1_0_0_v20140518
, org_apache_maven_scm__maven-scm-providers-standard__pom__2_0_0
, org_apache_maven_scm__maven-scm-provider-gitexe__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-git-commons__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-jgit__jar__2_0_0
, org_eclipse_jgit__org_eclipse_jgit__jar__5_13_1_202206130422-r
, com_googlecode_javaewah__JavaEWAH__jar__1_1_13
, org_eclipse_jgit__org_eclipse_jgit_ssh_apache__jar__5_13_1_202206130422-r
, org_apache_sshd__sshd-osgi__jar__2_7_0
, org_apache_sshd__sshd-sftp__jar__2_7_0
, org_apache_sshd__sshd-core__jar__2_7_0
, org_apache_sshd__sshd-common__jar__2_7_0
, net_i2p_crypto__eddsa__jar__0_3_0
, org_slf4j__jcl-over-slf4j__jar__1_7_36
, org_apache_maven_scm__maven-scm-provider-hg__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-svnexe__jar__2_0_0
, org_apache_maven_scm__maven-scm-manager-plexus__jar__2_0_0
, org_apache_maven_scm__maven-scm-api__jar__2_0_0
, org_apache_maven_scm__maven-scm-provider-svn-commons__jar__2_0_0
, org_apache_maven_shared__maven-shared-utils__jar__3_4_2
, commons-io__commons-io__jar__2_11_0
, org_jdom__jdom2__jar__2_0_6_1
, org_apache_maven_release__maven-release-manager__pom__3_0_1
}:
patchMavenJar {
  name = "org.apache.maven.release:maven-release-manager:jar:3.0.1";
  groupId = "org.apache.maven.release";
  artifactId = "maven-release-manager";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/release/maven-release-manager/3.0.1/maven-release-manager-3.0.1.jar";
      sha256 = "4fe1badc5f18413f3e5b513cd25c13426ced477156dd54c1e765ed74d422de7c";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_release__maven-release-api__jar__3_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-util__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interactivity-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_26;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-sec-dispatcher__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-invoker__jar__3_2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__jar__3_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_aether__aether-api__jar__1_0_0_v20140518;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-providers-standard__pom__2_0_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-gitexe__jar__2_0_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-git-commons__jar__2_0_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-jgit__jar__2_0_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_eclipse_jgit__org_eclipse_jgit__jar__5_13_1_202206130422-r;
      scope = "runtime";
      optional = false;
    }
    {
      drv = com_googlecode_javaewah__JavaEWAH__jar__1_1_13;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_eclipse_jgit__org_eclipse_jgit_ssh_apache__jar__5_13_1_202206130422-r;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-osgi__jar__2_7_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-sftp__jar__2_7_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-core__jar__2_7_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_sshd__sshd-common__jar__2_7_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = net_i2p_crypto__eddsa__jar__0_3_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_slf4j__jcl-over-slf4j__jar__1_7_36;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-hg__jar__2_0_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-svnexe__jar__2_0_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-manager-plexus__jar__2_0_0;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-api__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_scm__maven-scm-provider-svn-commons__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_jdom__jdom2__jar__2_0_6_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_release__maven-release-manager__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
