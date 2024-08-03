{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__36
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:36";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "36";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/36/maven-shared-components-36.pom";
      sha256 = "ec8e973e7964aaf490dbddd39f312340e00d113b8470f135a13e35e45f4baf9f";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__36;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
