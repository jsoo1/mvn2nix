{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__21
, org_apache_maven__maven-parent__pom__25
, commons-io__commons-io__2_4
, com_google_code_findbugs__jsr305__2_0_1
, org_apache__apache__pom__15
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:3.0.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.0.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.0.0/maven-shared-utils-3.0.0.jar";
        sha256 = "0796ca76de719a8f8178f090de4b9b03158ba65268f58cc8fc9bbe71a9f58f9e";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.0.0/maven-shared-utils-3.0.0.pom";
        sha256 = "948e8e116200325886eff501d39355b0bee1526d699f2bd6b227c18f5e35cdf4";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__21;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__25;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_findbugs__jsr305__2_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__15;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
