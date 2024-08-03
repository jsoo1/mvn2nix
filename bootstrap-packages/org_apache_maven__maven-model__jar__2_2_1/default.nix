{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__1_5_15
, org_apache_maven__maven-model__pom__2_2_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:jar:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "2.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/2.2.1/maven-model-2.2.1.jar";
      sha256 = "153b32f474fd676ec36ad807c508885005139140fc92168bb76bf6be31f8efb8";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__pom__2_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
