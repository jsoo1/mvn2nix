{
  lib
, pkgs
, patchMavenJar
, com_google_code_findbugs__jsr305__2_0_1
, org_apache_maven__maven-parent__pom__22
, org_apache__apache__pom__11
, org_apache_maven_shared__maven-shared-components__pom__18
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:0.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "0.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/0.1/maven-shared-utils-0.1.jar";
        sha256 = "86cd563b0bb40b0ef4e7183e41768049ad0afaca5b5acbf9680c53c217ca93d7";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/0.1/maven-shared-utils-0.1.pom";
        sha256 = "9ecb36b0e0d7d1d0f0dabd8705368b710df58b943091e9fa9071a29ccdc15a33";
      };
    }
  ];
  dependencies = [
    {
      drv = com_google_code_findbugs__jsr305__2_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__22;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__18;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
