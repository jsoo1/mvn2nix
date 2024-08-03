{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_doxia__doxia-sink-api__jar__1_0-alpha-9
, org_apache_maven__maven-reporting-api__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-reporting-api:jar:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-reporting-api";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-reporting-api/3.0-alpha-2/maven-reporting-api-3.0-alpha-2.jar";
      sha256 = "0753565100f01bd8f3f2995937b4db6fc0f2957259864100bf0832a225a95d79";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_doxia__doxia-sink-api__jar__1_0-alpha-9;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-reporting-api__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
