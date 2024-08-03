{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__33
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-jar-plugin:pom:3.2.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-jar-plugin";
  version = "3.2.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-jar-plugin/3.2.0/maven-jar-plugin-3.2.0.pom";
      sha256 = "a6e03919abd04393e7bfde0107bc6a7d071306a81e4732023fbea1744e9f1af2";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__33;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
