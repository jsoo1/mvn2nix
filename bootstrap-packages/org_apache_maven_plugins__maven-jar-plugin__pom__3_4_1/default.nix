{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven_plugins__maven-plugins__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-jar-plugin:pom:3.4.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-jar-plugin";
  version = "3.4.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-jar-plugin/3.4.1/maven-jar-plugin-3.4.1.pom";
      sha256 = "be9318cc19895ffd5532df090df37adb5b97396d9a827f961fde65753b5a922f";
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
