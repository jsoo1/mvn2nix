{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__7
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:16";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "16";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/16/maven-parent-16.pom";
        sha256 = "70cef83d246309a2aa355c38f2004edda3621ae0bc5c55a7a139eaeef4d1231a";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
