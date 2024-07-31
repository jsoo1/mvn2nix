{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__27
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:37";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "37";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/37/maven-parent-37.pom";
        sha256 = "bcf3700301e8221ef14da27a2f0cff71fcd03fc45276bfd84adace401e88bebc";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__27;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
