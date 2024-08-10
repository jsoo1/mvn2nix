{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers-git__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-provider-jgit:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-provider-jgit";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-provider-jgit/2.0.0/maven-scm-provider-jgit-2.0.0.pom";
      sha256 = "f4a0916636d0d6fe5aae4649f8b3b6e4cc74ed93603ab0579daaf36d9bf238e2";
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
