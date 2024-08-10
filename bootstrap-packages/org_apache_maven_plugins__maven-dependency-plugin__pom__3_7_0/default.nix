{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven_plugins__maven-plugins__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-dependency-plugin:pom:3.7.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-dependency-plugin";
  version = "3.7.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-dependency-plugin/3.7.0/maven-dependency-plugin-3.7.0.pom";
      sha256 = "2df909d598882db7b61e416823a1f5f66fa1b15236a785d173255e1f480fbf6c";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
