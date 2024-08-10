{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm-providers__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-providers-git:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-providers-git";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-providers-git/2.0.0/maven-scm-providers-git-2.0.0.pom";
      sha256 = "164a36a85399f7d3c58e705c62f07a90f2cceb6f3b3eba5e81ca1c29759d28ab";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm-providers__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
