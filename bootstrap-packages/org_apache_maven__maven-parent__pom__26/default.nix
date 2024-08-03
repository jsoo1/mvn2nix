{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__16
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:26";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "26";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/26/maven-parent-26.pom";
      sha256 = "ca10303316712e963b50f5a9c44eeacc7cf5e05b32b70336ba07440d2b0ce2d7";
    };
  };
  dependencies = [
    {
      drv = org_apache__apache__pom__16;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
