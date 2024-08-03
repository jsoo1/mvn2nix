{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__33
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:33";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "33";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/33/maven-shared-components-33.pom";
      sha256 = "f43ff6fee0b32533765b3406648d6a5532f85d5e488079480788cb36e79d0980";
    };
  };
  dependencies = [
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
