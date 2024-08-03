{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-utils__jar__3_2_1
, commons-io__commons-io__jar__2_5
, org_codehaus_plexus__plexus-component-annotations__jar__1_7_1
, org_apache_maven_shared__maven-invoker__pom__3_0_1
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-invoker:jar:3.0.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-invoker";
  version = "3.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-invoker/3.0.1/maven-invoker-3.0.1.jar";
      sha256 = "d20e5d26c19c04199c73fd4f0b6caebf4bbdc6b872a4504c5e71a192751d9464";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__jar__1_7_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-invoker__pom__3_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
