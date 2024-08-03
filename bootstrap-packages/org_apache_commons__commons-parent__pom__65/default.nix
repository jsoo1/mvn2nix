{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_1
, org_apache__apache__pom__31
}:
patchMavenJar {
  name = "org.apache.commons:commons-parent:pom:65";
  groupId = "org.apache.commons";
  artifactId = "commons-parent";
  version = "65";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/commons/commons-parent/65/commons-parent-65.pom";
      sha256 = "6cf3495fc2e6ac913a2b7f2e03fb5908fb3f229fb06d3358dc45678d5af3e36e";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
