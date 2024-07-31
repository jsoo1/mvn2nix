{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_slf4j__slf4j-api__1_7_36
, org_apache__apache__pom__29
, org_apache_maven_shared__maven-filtering__3_3_1
, org_sonatype_plexus__plexus-build-api__0_0_7
, org_apache_maven_plugins__maven-plugins__pom__39
, org_codehaus_plexus__plexus-interpolation__1_26
, org_codehaus_plexus__plexus-utils__3_5_1
, org_apache_commons__commons-lang3__3_12_0
, commons-io__commons-io__2_11_0
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-resources-plugin:3.3.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-resources-plugin";
  version = "3.3.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-resources-plugin/3.3.1/maven-resources-plugin-3.3.1.jar";
        sha256 = "eb4069c7fe50a313b3f5295ccd214f30402f63971c26f443f7f3e798be8cc2a7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-resources-plugin/3.3.1/maven-resources-plugin-3.3.1.pom";
        sha256 = "3269d0a6e3cd614a29486f57fc86488b0f1e458a11bebc61f9408fd6c7cf85ae";
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
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-filtering__3_3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_sonatype_plexus__plexus-build-api__0_0_7;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__39;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_26;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_commons__commons-lang3__3_12_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
