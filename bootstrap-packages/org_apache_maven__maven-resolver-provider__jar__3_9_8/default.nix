{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__jar__3_9_8
, org_apache_maven__maven-model-builder__jar__3_9_8
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, org_apache_maven__maven-artifact__jar__3_9_8
, org_apache_maven__maven-builder-support__jar__3_9_8
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3
, org_apache_maven__maven-repository-metadata__jar__3_9_8
, org_apache_maven_resolver__maven-resolver-api__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-spi__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-util__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-impl__jar__1_9_20
, org_apache_maven_resolver__maven-resolver-named-locks__jar__1_9_20
, org_slf4j__slf4j-api__jar__1_7_36
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, javax_inject__javax_inject__jar__1
, org_apache_maven__maven-resolver-provider__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-resolver-provider:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-resolver-provider";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-resolver-provider/3.9.8/maven-resolver-provider-3.9.8.jar";
      sha256 = "20f3c83142e89cb40a7af50ff22df38268cd0ce8fafdca4244453207b8c39750";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-model__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-builder-support__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-api__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-spi__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-util__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-impl__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_resolver__maven-resolver-named-locks__jar__1_9_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-resolver-provider__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
