{
  lib
, pkgs
, patchMavenJar
, org_apache_sshd__sshd-common__jar__2_7_0
, org_slf4j__slf4j-api__jar__1_7_30
, org_slf4j__jcl-over-slf4j__jar__1_7_30
, org_apache_sshd__sshd-core__pom__2_7_0
}:
patchMavenJar {
  name = "sshd-core";
  coordinates = "org.apache.sshd:sshd-core:jar:2.7.0";
  groupId = "org.apache.sshd";
  artifactId = "sshd-core";
  version = "2.7.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/sshd/sshd-core/2.7.0/sshd-core-2.7.0.jar";
      sha256 = "2f23d666dd1fd3317891d784f324542e236d89658c02adc7c02d137aa556e636";
    };
  };
  dependencies = [
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
      drv = org_apache_sshd__sshd-core__pom__2_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
