{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__41
}:
patchMavenJar {
  name = "maven-assembly-plugin";
  coordinates = "org.apache.maven.plugins:maven-assembly-plugin:pom:3.7.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-assembly-plugin";
  version = "3.7.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-assembly-plugin/3.7.1/maven-assembly-plugin-3.7.1.pom";
      sha256 = "3ddfd60e184204ccf4b2786fd31c9255554492ab657578421a03e71d8c5ca72d";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__41;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
