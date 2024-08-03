{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-project:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-project";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-project/3.0-alpha-2/maven-project-3.0-alpha-2.pom";
      sha256 = "24477230086e456dff22c24dec30aab0a8ae321a2ce5645a85a8516f7dd829e3";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
