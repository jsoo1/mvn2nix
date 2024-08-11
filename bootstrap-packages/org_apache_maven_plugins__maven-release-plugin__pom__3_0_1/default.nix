{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_release__maven-release__pom__3_0_1
}:
patchMavenJar {
  name = "maven-release-plugin";
  coordinates = "org.apache.maven.plugins:maven-release-plugin:pom:3.0.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-release-plugin";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-release-plugin/3.0.1/maven-release-plugin-3.0.1.pom";
      sha256 = "c3506eabfc3e87bba86ca3a9fdfd03d6d5d3bff4cb7240fe5bf9bd830b322dac";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_release__maven-release__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
