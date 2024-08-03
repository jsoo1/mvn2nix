{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__jar__2_5
, org_apache_maven_shared__maven-shared-utils__pom__3_2_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:jar:3.2.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.2.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.2.1/maven-shared-utils-3.2.1.jar";
      sha256 = "3ba9c619893c767db0f9c3e826d5118b57c35229301bcd16d865a89cec16a7e5";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__jar__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__pom__3_2_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
