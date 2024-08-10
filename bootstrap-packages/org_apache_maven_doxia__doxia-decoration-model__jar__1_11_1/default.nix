{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__jar__2_0_0
, org_codehaus_plexus__plexus-utils__jar__3_3_0
, org_apache_maven_doxia__doxia-decoration-model__pom__1_11_1
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-decoration-model:jar:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-decoration-model";
  version = "1.11.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.jar";
      sha256 = "411fc167774f2e3573f280c57a278fbe7bae677ee596a8ad24bd6c6bb2c5bbce";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_doxia__doxia-decoration-model__pom__1_11_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
