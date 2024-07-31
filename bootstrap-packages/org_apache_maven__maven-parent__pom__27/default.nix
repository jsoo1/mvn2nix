{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__17
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:27";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "27";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/27/maven-parent-27.pom";
        sha256 = "56987ec424c449a9dc4dd427458ea1cb09b38e67ef4c219378a268a5e0d1b8a0";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__17;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
