{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_codehaus_plexus__plexus-cipher__2_0
, org_apache_maven__maven-builder-support__3_9_8
, org_apache_maven__maven-settings__3_9_8
, org_codehaus_plexus__plexus-interpolation__1_27
, org_codehaus_plexus__plexus-utils__3_5_1
, org_codehaus_plexus__plexus-sec-dispatcher__2_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.9.8/maven-settings-builder-3.9.8.jar";
        sha256 = "46471aa98f27db5c8a90b383294d8ac3b529b7c30afe2bf02ac996cc2c175c99";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.9.8/maven-settings-builder-3.9.8.pom";
        sha256 = "899a0236213ed3cb77cba634f17d490660f4631736762499d06c0f07e12c1e5d";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-builder-support__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-sec-dispatcher__2_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
