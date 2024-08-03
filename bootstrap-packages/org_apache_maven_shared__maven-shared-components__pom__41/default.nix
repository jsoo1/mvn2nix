{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__41
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:41";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "41";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/41/maven-shared-components-41.pom";
      sha256 = "c6bd81e2588e0f0f87392d4db590e1d81c126a25ee9253252ef89c506cde1e34";
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
