{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-model:pom:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-model";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-model/3.9.8/maven-model-3.9.8.pom";
      sha256 = "85f965a61726c78c6ce0ceff24807a391dfa856cbbfc3852a044eedb74bc1170";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
