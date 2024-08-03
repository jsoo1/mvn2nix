{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__jar__2_6
, org_apache_maven_shared__maven-shared-utils__pom__3_3_3
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:jar:3.3.3";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.3.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.3.3/maven-shared-utils-3.3.3.jar";
      sha256 = "44a60c610f4e31524b03d81a698b1ecceba116320ea510babf859575b2ea7233";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__pom__3_3_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
