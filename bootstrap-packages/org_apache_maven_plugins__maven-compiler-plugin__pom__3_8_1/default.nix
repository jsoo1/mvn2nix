{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugins__maven-plugins__pom__33
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-compiler-plugin:pom:3.8.1";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-compiler-plugin";
  version = "3.8.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-compiler-plugin/3.8.1/maven-compiler-plugin-3.8.1.pom";
      sha256 = "9c50ff65fb7ee9045bcf94eea07d4451d13acee678387de82547cddc4d05aae9";
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
