{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__30
, org_apache__apache__pom__18
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-components:pom:30";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-components";
  version = "30";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-components/30/maven-shared-components-30.pom";
        sha256 = "ad9df3b73df8bbc0309ad42818fa9779cd10528df0708788f4aceddc514bd031";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__30;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
