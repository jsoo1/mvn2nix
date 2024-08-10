{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_9_1
, org_apache_maven_plugin-tools__maven-plugin-tools__pom__3_7_0
}:
patchMavenJar {
  name = "org.apache.maven.plugin-tools:maven-plugin-annotations:pom:3.7.0";
  groupId = "org.apache.maven.plugin-tools";
  artifactId = "maven-plugin-annotations";
  version = "3.7.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-annotations/3.7.0/maven-plugin-annotations-3.7.0.pom";
      sha256 = "86d9eb200680426ae1788d9e23c63d39d723c423804060466637a2ab7100729d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_9_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugin-tools__maven-plugin-tools__pom__3_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
