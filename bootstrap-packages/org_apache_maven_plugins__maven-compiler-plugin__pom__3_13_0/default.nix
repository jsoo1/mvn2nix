{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__41
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-compiler-plugin:pom:3.13.0";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-compiler-plugin";
  version = "3.13.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-compiler-plugin/3.13.0/maven-compiler-plugin-3.13.0.pom";
      sha256 = "0d00b84f26ff5f3e845bf349302345633ca65f8d8e9101b31082082415912c1e";
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
