{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__jar__2_0_1
, org_apache_maven_shared__maven-shared-utils__pom__0_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:jar:0.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/0.1/maven-shared-utils-0.1.jar";
      sha256 = "86cd563b0bb40b0ef4e7183e41768049ad0afaca5b5acbf9680c53c217ca93d7";
    };
  };
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__jar__2_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__pom__0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
