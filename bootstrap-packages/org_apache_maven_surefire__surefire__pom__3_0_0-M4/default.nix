{
  lib
, pkgs
, patchMavenJar
, org_apache__apache__pom__21
, org_apache_maven__maven-parent__pom__33
}:
patchMavenJar {
  name = "org.apache.maven.surefire:surefire:pom:3.0.0-M4";
  groupId = "org.apache.maven.surefire";
  artifactId = "surefire";
  version = "3.0.0-M4";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/surefire/surefire/3.0.0-M4/surefire-3.0.0-M4.pom";
        sha256 = "6e05711529bb3a792ab996bede47196082501d006e7f781ab7f30ad69fc3e102";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache__apache__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__33;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
