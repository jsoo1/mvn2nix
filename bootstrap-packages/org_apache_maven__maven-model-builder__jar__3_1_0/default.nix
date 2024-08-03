{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_codehaus_plexus__plexus-interpolation__jar__1_16
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_apache_maven__maven-model__jar__3_1_0
, org_apache_maven__maven-model-builder__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.1.0/maven-model-builder-3.1.0.jar";
      sha256 = "45f437ef89851578e7d230c873b7aa766147e807100a044e7d17213f0a8ac2e5";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_16;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_1_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
