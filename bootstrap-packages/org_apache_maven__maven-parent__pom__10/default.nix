{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__4
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:10";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "10";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/10/maven-parent-10.pom";
        sha256 = "81fe14cb9779d36e0c610e1049e5b32a6b9974957f257921acf628b31c5486c8";
      };
    }
  ];
  dependencies = [
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
