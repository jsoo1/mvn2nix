{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-model__3_0
, org_apache_maven__maven__pom__3_0
, org_apache_maven__maven-parent__pom__15
, org_apache__apache__pom__6
, org_codehaus_plexus__plexus-component-annotations__1_5_5
, org_codehaus_plexus__plexus-interpolation__1_14
, org_codehaus_plexus__plexus-utils__2_0_4
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.0/maven-model-builder-3.0.jar";
        sha256 = "1c98a4ec9eb0cb86ecf01710aa75c0346ee3f96edc6edeabcb21ed984120e154";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.0/maven-model-builder-3.0.pom";
        sha256 = "c1413ace47dafabe7917072f26e0b667f5b3a762156f82893544cd71e6a6c4ba";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-model__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__15;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__2_0_4;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
