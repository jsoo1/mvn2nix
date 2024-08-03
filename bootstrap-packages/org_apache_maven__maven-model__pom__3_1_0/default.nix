{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.1.0/maven-model-3.1.0.pom";
      sha256 = "f99770a493eb79eadd4fb0629425035a8496d02f377d89949b75274698c67dfb";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
