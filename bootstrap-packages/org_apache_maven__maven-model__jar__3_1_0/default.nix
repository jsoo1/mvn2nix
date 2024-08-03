{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_0_10
, org_apache_maven__maven-model__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:jar:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.1.0/maven-model-3.1.0.jar";
      sha256 = "f9f7ad6301942d385fc79ed0615a7d5f06dbda60dee70b709e679624313e642a";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_0_10;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-model__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
