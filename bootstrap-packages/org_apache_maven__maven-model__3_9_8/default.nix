{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_9_8
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
, org_codehaus_plexus__plexus-utils__3_5_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.9.8";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.9.8/maven-model-3.9.8.jar";
        sha256 = "9b4be46c55f0720162664615d4fe8468f99866697a484e1652a19189656cb37d";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.9.8/maven-model-3.9.8.pom";
        sha256 = "85f965a61726c78c6ce0ceff24807a391dfa856cbbfc3852a044eedb74bc1170";
      };
    }
  ];
  dependencies = [
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
      drv = org_codehaus_plexus__plexus-utils__3_5_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
