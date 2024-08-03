{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven:maven-reporting-api:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven-reporting-api";
  version = "3.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-reporting-api/3.0-alpha-2/maven-reporting-api-3.0-alpha-2.pom";
      sha256 = "74c685876db07bd4d1df1fbfa647ee2ee56c7d4cc1643cf92473f075ae95537d";
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
