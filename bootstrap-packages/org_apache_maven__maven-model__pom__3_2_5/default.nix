{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:pom:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.2.5/maven-model-3.2.5.pom";
      sha256 = "b789b821c0b7a436d9dc4c167c1947188a18194c7d41ed5e59b0f5db3dbaaca9";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
