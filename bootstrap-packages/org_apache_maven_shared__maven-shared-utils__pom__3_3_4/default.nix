{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__34
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:pom:3.3.4";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.3.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.3.4/maven-shared-utils-3.3.4.pom";
      sha256 = "bf83482d96f76d63699d63e125e64f4ac73c8178985733662dbd69af9c60339e";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
