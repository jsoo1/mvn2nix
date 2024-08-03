{
  lib
, pkgs
, patchMavenJar
, org_slf4j__slf4j-api__jar__1_7_36
, commons-io__commons-io__jar__2_11_0
, org_apache_maven_shared__maven-shared-utils__pom__3_4_2
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:jar:3.4.2";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.4.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.4.2/maven-shared-utils-3.4.2.jar";
      sha256 = "b613357e1bad4dfc1dead801691c9460f9585fe7c6b466bc25186212d7d18487";
    };
  };
  dependencies = [
    {
      drv = org_slf4j__slf4j-api__jar__1_7_36;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_11_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__pom__3_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
