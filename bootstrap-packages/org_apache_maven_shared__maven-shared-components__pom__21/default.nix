{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__25
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:21";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "21";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/21/maven-shared-components-21.pom";
      sha256 = "eedad42e177b4150b7fc8b84c6c2824bcbd3d6461bf7b87d2fb294efc4010a33";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__25;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
