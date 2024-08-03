{
  lib
, pkgs
, patchMavenJar
, org_junit__junit-bom__pom__5_10_2
, org_apache_maven__maven__pom__3_9_8
}:
patchMavenJar {
  name = "org.apache.maven:maven-resolver-provider:pom:3.9.8";
  groupId = "org.apache.maven";
  artifactId = "maven-resolver-provider";
  version = "3.9.8";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-resolver-provider/3.9.8/maven-resolver-provider-3.9.8.pom";
      sha256 = "996f6b76d661cd771df9b1f752c32219e23e5747bcf4f7112fa2f9132294225d";
    };
  };
  dependencies = [
    {
      drv = org_junit__junit-bom__pom__5_10_2;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__3_9_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
