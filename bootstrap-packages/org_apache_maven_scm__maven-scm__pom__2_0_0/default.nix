{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "maven-scm";
  coordinates = "org.apache.maven.scm:maven-scm:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm/2.0.0/maven-scm-2.0.0.pom";
      sha256 = "21bd8ee9d4522ff69094966da54f1b7356af1519642e24370d1f580c5ff507df";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
