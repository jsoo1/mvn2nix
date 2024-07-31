{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1
, org_apache_maven__maven-profile__2_2_1
, org_apache_maven_wagon__wagon-provider-api__1_0-beta-6
, org_apache_maven__maven-model__2_2_1
, org_apache_maven__maven-artifact-manager__2_2_1
, org_apache_maven__maven-parent__pom__11
, org_apache_maven__maven-plugin-registry__2_2_1
, classworlds__classworlds__1_1
, org_apache_maven__maven__pom__2_2_1
, org_apache_maven__maven-settings__2_2_1
, org_codehaus_plexus__plexus-interpolation__1_11
, org_apache_maven__maven-artifact__2_2_1
, org_apache__apache__pom__5
, backport-util-concurrent__backport-util-concurrent__3_1
, org_codehaus_plexus__plexus-utils__1_5_15
, org_apache_maven__maven-repository-metadata__2_2_1
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-project:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-project";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-project/2.2.1/maven-project-2.2.1.jar";
        sha256 = "24ddb65b7a6c3befb6267ce5f739f237c84eba99389265c30df67c3dd8396a40";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-project/2.2.1/maven-project-2.2.1.pom";
        sha256 = "34af0baedaef19375b7c1a7da967e9089d5e0754647fdbe9a302590392874b77";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-profile__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact-manager__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-plugin-registry__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-settings__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_11;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = backport-util-concurrent__backport-util-concurrent__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__3_8_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
