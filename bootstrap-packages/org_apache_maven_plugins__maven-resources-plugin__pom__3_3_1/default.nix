{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-resources-plugin:pom:3.3.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-resources-plugin";
  version = "3.3.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-resources-plugin/3.3.1/maven-resources-plugin-3.3.1.pom";
      sha256 = "3269d0a6e3cd614a29486f57fc86488b0f1e458a11bebc61f9408fd6c7cf85ae";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
