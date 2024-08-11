{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__25
}:
patchMavenJar {
  name = "maven-parent";
  coordinates = "org.apache.maven:maven-parent:pom:35";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "35";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/35/maven-parent-35.pom";
      sha256 = "d2edd4077c0abc9cc8202883c459503180424636cb39a83031ec1112394b2576";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__25;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
