{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven_shared__maven-shared-components__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-dependency-tree:pom:3.3.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-dependency-tree";
  version = "3.3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-dependency-tree/3.3.0/maven-dependency-tree-3.3.0.pom";
      sha256 = "06d3cdd58a0bcec206558ade256147aade63a166b042ef53215df6c51206d920";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
