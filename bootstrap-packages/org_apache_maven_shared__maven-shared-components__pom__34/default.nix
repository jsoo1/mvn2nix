{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__34
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:34";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "34";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/34/maven-shared-components-34.pom";
      sha256 = "64d0edb5f21cfff600b1c3ab7d45f9754cd18ba5fbf83b3d1bb7c4849437d8e3";
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
