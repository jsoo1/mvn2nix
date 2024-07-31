{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:33";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "33";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/33/maven-parent-33.pom";
        sha256 = "3856e3fcd169502d5f12fe2452604ebf6c7c025f15656bfa558ea99ed29d73ea";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
