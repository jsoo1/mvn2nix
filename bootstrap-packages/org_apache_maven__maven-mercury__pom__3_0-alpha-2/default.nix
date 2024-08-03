{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-mercury:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-mercury";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-mercury/3.0-alpha-2/maven-mercury-3.0-alpha-2.pom";
      sha256 = "197231cf1c4b4ef5c2c106374a826fc2b90626c6c61e05bde33aec15e3f4725b";
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
