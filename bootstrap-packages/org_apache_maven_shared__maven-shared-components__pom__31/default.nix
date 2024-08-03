{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__31
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:31";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "31";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/31/maven-shared-components-31.pom";
      sha256 = "d81a80d2cb54500a4f9f2a015e484393cba991e39d336425458ec6682d9a2dca";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
