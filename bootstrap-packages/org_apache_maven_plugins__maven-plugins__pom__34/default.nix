{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
}:
patchMavenJar {
  name = "maven-plugins";
  coordinates = "org.apache.maven.plugins:maven-plugins:pom:34";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-plugins";
  version = "34";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/34/maven-plugins-34.pom";
      sha256 = "83e11813318d17e4693f17f25935b3c1dd4d75025bed955ee80e7bba8c220441";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
