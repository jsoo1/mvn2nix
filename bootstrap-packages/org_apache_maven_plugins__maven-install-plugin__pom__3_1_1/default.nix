{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-install-plugin:pom:3.1.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-install-plugin";
  version = "3.1.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.1/maven-install-plugin-3.1.1.pom";
      sha256 = "77ddf4e491555637a7c70cf5caa97913800ec22ca68f4a237d4d43e06f87f8dc";
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
