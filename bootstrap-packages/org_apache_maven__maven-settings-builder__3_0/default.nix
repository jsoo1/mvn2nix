{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
, org_sonatype_plexus__plexus-cipher__1_4
, org_apache_maven__maven-settings__3_0
, org_apache_maven__maven-parent__pom__15
, org_apache__apache__pom__6
, org_sonatype_plexus__plexus-sec-dispatcher__1_3
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_codehaus_plexus__plexus-interpolation__1_14
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.0/maven-settings-builder-3.0.jar";
        sha256 = "e17e706c6f03c453f6000599cab607c2af5f1cc6e3a3b1e6fce27e5ef4999eab";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.0/maven-settings-builder-3.0.pom";
        sha256 = "1e707086b2efabe7527e75539f87e5b4544ed20e8b5ae8aa35bcc24d7ba3a2b0";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__1_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__2_0_4;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
