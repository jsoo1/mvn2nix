{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_20
, org_apache_maven__maven-model__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:jar:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.2.5/maven-model-3.2.5.jar";
      sha256 = "8d439cc1661349dab1c69eed0f831336d187e162cc6d68aa4deefcff57ee0624";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_20;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
