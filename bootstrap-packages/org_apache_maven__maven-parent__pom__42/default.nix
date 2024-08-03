{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache__apache__pom__32
}:
patchMavenJar {
  name = "org.apache.maven:maven-parent:pom:42";
  groupId = "org.apache.maven";
  artifactId = "maven-parent";
  version = "42";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-parent/42/maven-parent-42.pom";
      sha256 = "04534dea350a2187970a5b74444338bcf78ba8e537d44f262acfba16ebb33056";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__32;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
