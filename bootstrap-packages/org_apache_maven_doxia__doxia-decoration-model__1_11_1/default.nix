{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sitetools__pom__1_11_1
, org_apache_maven__maven-parent__pom__34
, org_codehaus_plexus__plexus-utils__3_3_0
, org_codehaus_plexus__plexus-component-annotations__2_0_0
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.doxia:doxia-decoration-model:1.11.1";
  groupId = "org.apache.maven.doxia";
  artifactId = "doxia-decoration-model";
  version = "1.11.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.jar";
        sha256 = "411fc167774f2e3573f280c57a278fbe7bae677ee596a8ad24bd6c6bb2c5bbce";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/doxia/doxia-decoration-model/1.11.1/doxia-decoration-model-1.11.1.pom";
        sha256 = "fd2040e074d6b00c595562c7fc8117f4d378038aa0c5c2bc8fb84c2b8e6246fb";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sitetools__pom__1_11_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__2_0_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
