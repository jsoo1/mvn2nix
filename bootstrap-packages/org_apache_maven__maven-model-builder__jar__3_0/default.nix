{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__2_0_4
, org_codehaus_plexus__plexus-interpolation__jar__1_14
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_apache_maven__maven-model__jar__3_0
, org_apache_maven__maven-model-builder__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:jar:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.0/maven-model-builder-3.0.jar";
      sha256 = "1c98a4ec9eb0cb86ecf01710aa75c0346ee3f96edc6edeabcb21ed984120e154";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
