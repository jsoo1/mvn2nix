{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_plugin-tools__maven-plugin-annotations__pom__3_7_0
}:
patchMavenJar {
  name = "maven-plugin-annotations";
  coordinates = "org.apache.maven.plugin-tools:maven-plugin-annotations:jar:3.7.0";
  groupId = "org.apache.maven.plugin-tools";
  artifactId = "maven-plugin-annotations";
  version = "3.7.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugin-tools/maven-plugin-annotations/3.7.0/maven-plugin-annotations-3.7.0.jar";
      sha256 = "6f154c4eb3bc50dd609e794b364fd18661a4b0b91c7e4a0810127a7620e30603";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_plugin-tools__maven-plugin-annotations__pom__3_7_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
