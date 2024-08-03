{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven__pom__3_2_5
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact:pom:3.2.5";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact";
  version = "3.2.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact/3.2.5/maven-artifact-3.2.5.pom";
      sha256 = "4e7f1161d5e955492198699b47a413ae1059e9ba187de2970a75aa655a8cfd21";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven__pom__3_2_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
