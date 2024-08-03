{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__34
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:pom:3.3.3";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.3.3";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.3.3/maven-shared-utils-3.3.3.pom";
      sha256 = "34564d462b074de2650b855be723de8f5593e590cb9132bae34d9db1dffb5be7";
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
