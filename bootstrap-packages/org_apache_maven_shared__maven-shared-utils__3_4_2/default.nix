{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__39
, org_slf4j__slf4j-api__1_7_36
, org_apache__apache__pom__29
, org_fusesource_jansi__jansi__2_4_0
, commons-io__commons-io__2_11_0
, org_apache_maven__maven-parent__pom__39
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:3.4.2";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.4.2";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.jar";
        sha256 = "b613357e1bad4dfc1dead801691c9460f9585fe7c6b466bc25186212d7d18487";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.pom";
        sha256 = "a941745d7faeb8dc9a75edc2c330c994b7440b9a44d21142716b6053967a41c1";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__39;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__29;
      scope = "test";
      optional = false;
    }
    {
      drv = org_fusesource_jansi__jansi__2_4_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = commons-io__commons-io__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__39;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
