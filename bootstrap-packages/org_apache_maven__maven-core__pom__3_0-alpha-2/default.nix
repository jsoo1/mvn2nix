{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-core:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-core";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-core/3.0-alpha-2/maven-core-3.0-alpha-2.pom";
      sha256 = "5b10454af29156d58dfb35dfcccf45f6fb6cd0c31658b62fcb8a44c49d9229fb";
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
