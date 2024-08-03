{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__jar__2_4
, com_google_code_findbugs__jsr305__jar__2_0_1
, org_apache_maven_shared__maven-shared-utils__pom__3_0_0
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:jar:3.0.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.0.0/maven-shared-utils-3.0.0.jar";
      sha256 = "0796ca76de719a8f8178f090de4b9b03158ba65268f58cc8fc9bbe71a9f58f9e";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__jar__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__jar__2_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__pom__3_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
