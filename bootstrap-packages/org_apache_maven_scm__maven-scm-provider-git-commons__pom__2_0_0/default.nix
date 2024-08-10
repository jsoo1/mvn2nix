{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers-git__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-provider-git-commons:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-git-commons";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-git-commons/2.0.0/maven-scm-provider-git-commons-2.0.0.pom";
      sha256 = "b072117cb751d487a49137ee93e05602f1b2ec287d71807d125afb77051498b4";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm-providers-git__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
