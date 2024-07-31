{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-utils__3_2_1
, org_apache_maven__maven-parent__pom__31
, org_apache__apache__pom__19
, commons-io__commons-io__2_5
, org_codehaus_plexus__plexus-component-annotations__1_7_1
, org_apache_maven_shared__maven-shared-components__pom__31
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-invoker:3.0.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-invoker";
  version = "3.0.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-invoker/3.0.1/maven-invoker-3.0.1.jar";
        sha256 = "d20e5d26c19c04199c73fd4f0b6caebf4bbdc6b872a4504c5e71a192751d9464";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-invoker/3.0.1/maven-invoker-3.0.1.pom";
        sha256 = "8ab7297ba1f80bed1949f723822ff0b49c92cf8963ef1f9b2c4402a78e75b91d";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-utils__3_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__31;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__19;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-component-annotations__1_7_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__31;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
