{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__2_0_4
, org_apache_maven__maven-model__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:jar:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.0/maven-model-3.0.jar";
      sha256 = "27e426d73f8662b47f60df0e43439b3dec2909c42b89175a6e4431dfed3edafd";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__2_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
