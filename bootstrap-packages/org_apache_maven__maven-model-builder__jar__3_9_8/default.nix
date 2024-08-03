{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-interpolation__jar__1_27
, javax_inject__javax_inject__jar__1
, org_apache_maven__maven-model__jar__3_9_8
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven__maven-artifact__jar__3_9_8
, org_apache_maven__maven-builder-support__jar__3_9_8
, org_eclipse_sisu__org_eclipse_sisu_inject__jar__0_9_0_M3
, org_apache_maven__maven-model-builder__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.9.8/maven-model-builder-3.9.8.jar";
      sha256 = "de166f6c06c217d9333de569f7661ef11d5122f74a78103ed5dd48e8a3bd3820";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_27;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_9_8;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
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
      drv = org_apache_maven__maven-model-builder__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
