{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_5_1
, org_apache_maven__maven-model__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:jar:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.9.8/maven-model-3.9.8.jar";
      sha256 = "9b4be46c55f0720162664615d4fe8468f99866697a484e1652a19189656cb37d";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_5_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
