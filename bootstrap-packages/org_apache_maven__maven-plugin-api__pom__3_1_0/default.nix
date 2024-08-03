{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.1.0/maven-plugin-api-3.1.0.pom";
      sha256 = "ce628c347aada38b626022f795bd6d3f4bdc240c56c6709f4a76ffa6e450f303";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
