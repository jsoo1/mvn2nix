{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__41
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-plugins:pom:41";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-plugins";
  version = "41";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/41/maven-plugins-41.pom";
      sha256 = "9e64593239bb69d80b2db9e595d8c0fc3cb44cf2aa5c1ed547718b4cfd732efe";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__41;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
