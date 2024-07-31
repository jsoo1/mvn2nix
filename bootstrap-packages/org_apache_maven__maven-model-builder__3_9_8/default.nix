{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_apache_maven__maven-model__3_9_8
, org_apache_maven__maven-builder-support__3_9_8
, org_apache_maven__maven-artifact__3_9_8
, org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3
, org_codehaus_plexus__plexus-interpolation__1_27
, org_codehaus_plexus__plexus-utils__3_5_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.9.8/maven-model-builder-3.9.8.jar";
        sha256 = "de166f6c06c217d9333de569f7661ef11d5122f74a78103ed5dd48e8a3bd3820";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.9.8/maven-model-builder-3.9.8.pom";
        sha256 = "157234d0a7f5732f36c9c010e6d11f852fc40efaa3dc99eabd8673b1ba6b77ff";
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
      drv = org_apache_maven__maven-model__3_9_8;
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
      drv = org_eclipse_sisu__org_eclipse_sisu_inject__0_9_0_M3;
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
