{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__jar__2_6
, org_apache_maven_shared__maven-shared-utils__pom__3_3_4
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:jar:3.3.4";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.3.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.3.4/maven-shared-utils-3.3.4.jar";
      sha256 = "7925d9c5a0e2040d24b8fae3f612eb399cbffe5838b33ba368777dc7bddf6dda";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__pom__3_3_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
