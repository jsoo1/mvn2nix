{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven-parent__pom__42
}:
patchMavenJar {
  name = "org.apache.maven.resolver:maven-resolver:pom:1.9.20";
  groupId = "org.apache.maven.resolver";
  artifactId = "maven-resolver";
  version = "1.9.20";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/resolver/maven-resolver/1.9.20/maven-resolver-1.9.20.pom";
      sha256 = "4a737dcae48cc0970996f1afdf2d30f4b3954bf4510cee0bf4699f78ed58b97a";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__42;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
