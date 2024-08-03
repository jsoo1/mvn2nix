{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:19";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "19";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/19/maven-shared-components-19.pom";
      sha256 = "d82408269aada2eb1521ee8ff17f7c67333684f8ed2a09a9e35badd2e7575957";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
