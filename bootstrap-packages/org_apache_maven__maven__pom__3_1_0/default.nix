{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__23
}:
patchMavenJar {
  name = "org.apache.maven:maven:pom:3.1.0";
  groupId = "org.apache.maven";
  artifactId = "maven";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven/3.1.0/maven-3.1.0.pom";
      sha256 = "08b93530e36adea529c882f8d362402dce74250fdc010256029455655f795607";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
