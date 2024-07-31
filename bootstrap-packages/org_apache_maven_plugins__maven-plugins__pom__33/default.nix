{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
, org_apache_maven__maven-parent__pom__33
}:
patchMavenJar {
  name = "org.apache.maven.plugins:maven-plugins:pom:33";
  groupId = "org.apache.maven.plugins";
  artifactId = "maven-plugins";
  version = "33";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-plugins/33/maven-plugins-33.pom";
        sha256 = "5db02c6f379712fa428b82f7742407bb712b98ad592c7779e2b66bd66ec8b1d2";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
