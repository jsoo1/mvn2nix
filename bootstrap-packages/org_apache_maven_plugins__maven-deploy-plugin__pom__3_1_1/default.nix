{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-deploy-plugin:pom:3.1.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-deploy-plugin";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-deploy-plugin/3.1.1/maven-deploy-plugin-3.1.1.pom";
      sha256 = "500abc80b43b0d14286d7f4ea98af37c3218b57d1357d853be03adf74ae53398";
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
