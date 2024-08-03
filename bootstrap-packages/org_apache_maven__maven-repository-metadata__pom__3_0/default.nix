{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-repository-metadata:pom:3.0";
  groupId = "org.apache.maven";
  artifactId = "maven-repository-metadata";
  version = "3.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-repository-metadata/3.0/maven-repository-metadata-3.0.pom";
      sha256 = "8d9ce34e4bc02c4df761578c5f48ac3da5af51f259f5e3e4ea9047ec345ed1b7";
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
