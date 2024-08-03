{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-builder-support__jar__3_9_8
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven__maven-settings__jar__3_9_8
, org_codehaus_plexus__plexus-sec-dispatcher__jar__2_0
, org_codehaus_plexus__plexus-cipher__jar__2_0
, org_apache_maven__maven-settings-builder__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-settings-builder:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-settings-builder";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-settings-builder/3.9.8/maven-settings-builder-3.9.8.jar";
      sha256 = "46471aa98f27db5c8a90b383294d8ac3b529b7c30afe2bf02ac996cc2c175c99";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-builder-support__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-sec-dispatcher__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings-builder__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
