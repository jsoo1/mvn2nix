{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-settings__jar__2_2_1
, org_apache_maven__maven-profile__jar__2_2_1
, org_apache_maven__maven-model__jar__2_2_1
, org_apache_maven__maven-artifact-manager__jar__2_2_1
, org_apache_maven__maven-repository-metadata__jar__2_2_1
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, backport-util-concurrent__backport-util-concurrent__jar__3_1
, org_apache_maven__maven-plugin-registry__jar__2_2_1
, org_codehaus_plexus__plexus-interpolation__jar__1_11
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, org_apache_maven__maven-artifact__jar__2_2_1
, org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1
, junit__junit__jar__3_8_1
, classworlds__classworlds__jar__1_1
, org_apache_maven__maven-project__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-project:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-project";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-project/2.2.1/maven-project-2.2.1.jar";
      sha256 = "24ddb65b7a6c3befb6267ce5f739f237c84eba99389265c30df67c3dd8396a40";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-settings__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-profile__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact-manager__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = backport-util-concurrent__backport-util-concurrent__jar__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-registry__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-project__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
