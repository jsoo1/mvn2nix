{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__42
, org_apache__apache__pom__32
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:42";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "42";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/42/maven-shared-components-42.pom";
        sha256 = "aa66faa11c11b900d099bfef0ee9fe8485d7e7fc74e87193e1f74572ed9587c5";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__42;
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
