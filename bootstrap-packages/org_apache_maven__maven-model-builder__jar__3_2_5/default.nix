{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_codehaus_plexus__plexus-interpolation__jar__1_21
, org_codehaus_plexus__plexus-component-annotations__jar__1_5_5
, org_apache_maven__maven-model__jar__3_2_5
, org_apache_maven__maven-model-builder__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-model-builder:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-model-builder";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model-builder/3.2.5/maven-model-builder-3.2.5.jar";
      sha256 = "cc5321269d080ad6694458f53186be5391a21c488ab3a7d6dd73123c7681879d";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-interpolation__jar__1_21;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__jar__3_2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model-builder__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
