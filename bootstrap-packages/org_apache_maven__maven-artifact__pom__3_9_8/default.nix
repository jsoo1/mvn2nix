{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:pom:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.9.8/maven-artifact-3.9.8.pom";
      sha256 = "7ff69555cd2cf92a41cecd936a83a7247e46c188f432ab62f435b28dcd02010a";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
