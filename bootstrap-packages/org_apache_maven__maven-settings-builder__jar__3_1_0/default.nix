{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_codehaus_plexus__plexus-interpolation__jar__1_16
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_apache_maven__maven-settings__jar__3_1_0
, org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3
, org_sonatype_plexus__plexus-cipher__jar__1_7
, org_apache_maven__maven-settings-builder__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.1.0/maven-settings-builder-3.1.0.jar";
      sha256 = "d73d0740f1ae3f903eaac1e9f69229068d8ffd60e6afe84e64cc6bad42de2ff2";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_16;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-sec-dispatcher__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-cipher__jar__1_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
