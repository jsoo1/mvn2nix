{
  lib
, pkgs
, patchMavenJar
, commons-io__commons-io__jar__2_5
, org_apache_maven_shared__maven-shared-utils__pom__3_1_0
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:jar:3.1.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.1.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.1.0/maven-shared-utils-3.1.0.jar";
      sha256 = "88e5334c4c29a6e81c74a1d814c54a9a3b1e4fc6560a95da196fe16928095471";
    };
  };
  dependencies = [
    {
      drv = commons-io__commons-io__jar__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-utils__pom__3_1_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
