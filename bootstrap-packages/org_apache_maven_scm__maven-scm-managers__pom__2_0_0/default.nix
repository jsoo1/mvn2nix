{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_scm__maven-scm__pom__2_0_0
}:
patchMavenJar {
  name = "org.apache.maven.scm:maven-scm-managers:pom:2.0.0";
  groupId = "org.apache.maven.scm";
  artifactId = "maven-scm-managers";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/scm/maven-scm-managers/2.0.0/maven-scm-managers-2.0.0.pom";
      sha256 = "1d03193c5385962312f2d86709c4cae3da6b6c48a73fd2ad536ee60061951703";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_scm__maven-scm__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
