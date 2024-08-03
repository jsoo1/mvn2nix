{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:pom:3.4.2";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.pom";
      sha256 = "a941745d7faeb8dc9a75edc2c330c994b7440b9a44d21142716b6053967a41c1";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
