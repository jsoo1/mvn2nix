{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven_plugins__maven-plugins__pom__42
}:
patchMavenJar {
  name = "maven-install-plugin";
  coordinates = "org.apache.maven.plugins:maven-install-plugin:pom:3.1.2";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-install-plugin";
  version = "3.1.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-install-plugin/3.1.2/maven-install-plugin-3.1.2.pom";
      sha256 = "4b2a190117c3d03e73e866d482d466aec4e28eafc4d211485df6a12e713bded9";
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
