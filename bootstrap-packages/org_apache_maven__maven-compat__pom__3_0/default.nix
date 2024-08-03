{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-compat:pom:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-compat";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-compat/3.0/maven-compat-3.0.pom";
      sha256 = "612a1751377f324c1a6167c6d70a26800cbe3f1b2a37d03a9377ef4f80e7b526";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
