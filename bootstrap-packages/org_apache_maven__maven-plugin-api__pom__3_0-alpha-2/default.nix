{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-plugin-api:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-plugin-api";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-plugin-api/3.0-alpha-2/maven-plugin-api-3.0-alpha-2.pom";
      sha256 = "35d1d93eed25ce73a49b05fa313243d5f2bb5d6bcb5999fa1ded0091da5fc344";
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
