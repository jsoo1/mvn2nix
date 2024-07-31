{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, com_google_guava__failureaccess__1_0_2
, org_apache__apache__pom__32
, org_apache_maven__maven-model__3_9_8
, org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3
, com_google_inject__guice__5_1_0
, org_slf4j__slf4j-api__1_7_36
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven_resolver__maven-resolver-api__1_9_20
, org_apache_maven_resolver__maven-resolver-named-locks__1_9_20
, org_apache_maven__maven-model-builder__3_9_8
, org_apache_maven__maven-repository-metadata__3_9_8
, org_apache_maven__maven-parent__pom__42
, org_apache_maven_resolver__maven-resolver-impl__1_9_20
, org_apache_maven_resolver__maven-resolver-spi__1_9_20
, com_google_guava__guava__33_2_1-jre
, org_apache_maven_resolver__maven-resolver-util__1_9_20
, org_apache_maven__maven-builder-support__3_9_8
, org_apache_maven__maven-artifact__3_9_8
, org_codehaus_plexus__plexus-interpolation__1_27
, org_codehaus_plexus__plexus-utils__3_5_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-resolver-provider:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-resolver-provider";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-resolver-provider/3.9.8/maven-resolver-provider-3.9.8.jar";
        sha256 = "20f3c83142e89cb40a7af50ff22df38268cd0ce8fafdca4244453207b8c39750";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-resolver-provider/3.9.8/maven-resolver-provider-3.9.8.pom";
        sha256 = "996f6b76d661cd771df9b1f752c32219e23e5747bcf4f7112fa2f9132294225d";
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
      drv = com_google_guava__failureaccess__1_0_2;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_inject__guice__5_1_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-named-locks__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-impl__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-spi__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_guava__guava__33_2_1-jre;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-builder-support__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__3_9_8;
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
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
