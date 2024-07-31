{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__10
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.maven:maven:pom:3.0-alpha-2";
  groupId = "org.apache.maven";
  artifactId = "maven";
  version = "3.0-alpha-2";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven/3.0-alpha-2/maven-3.0-alpha-2.pom";
        sha256 = "4c2f8341518aeb9d488844e334c02fa66dd4bb091bfdeb965c8a848ac6ea5aa2";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__10;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
