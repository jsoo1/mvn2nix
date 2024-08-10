{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven_plugins__maven-plugins__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-deploy-plugin:pom:3.1.2";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-deploy-plugin";
  version = "3.1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.2/maven-deploy-plugin-3.1.2.pom";
      sha256 = "fe044f57bad86ad0d5afc50957b80b8bd5ddf0e2014e352132d9249a307ad0d1";
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
