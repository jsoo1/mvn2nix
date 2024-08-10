{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers-git__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-provider-gitexe:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-gitexe";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-gitexe/2.0.0/maven-scm-provider-gitexe-2.0.0.pom";
      sha256 = "fb38be8228cd0de6016e087a83cdd305d2e5d72344179b95a63a7ca140e6012c";
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
