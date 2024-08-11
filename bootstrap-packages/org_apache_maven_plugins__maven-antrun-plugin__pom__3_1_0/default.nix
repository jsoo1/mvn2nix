{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__34
}:
patchMavenJar {
  name = "maven-antrun-plugin";
  coordinates = "org.apache.maven.plugins:maven-antrun-plugin:pom:3.1.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-antrun-plugin";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-antrun-plugin/3.1.0/maven-antrun-plugin-3.1.0.pom";
      sha256 = "978469f5d7558b1a82f596bdd6984e3137a3c0fc1c7af76f1a62824307dfb14e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_plugins__maven-plugins__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
