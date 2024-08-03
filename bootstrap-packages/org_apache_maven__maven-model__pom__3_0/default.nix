{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:pom:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.0/maven-model-3.0.pom";
      sha256 = "3d6fdeb72b2967f1fa2784134fb832d08d8d6e879b7ace7712f2c7281994fc1e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
