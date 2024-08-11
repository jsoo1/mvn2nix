{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-utils__jar__3_3_4
, commons-io__commons-io__jar__2_6
, javax_inject__javax_inject__jar__1
, org_apache_maven_shared__maven-invoker__pom__3_2_0
}:
patchMavenJar {
  name = "maven-invoker";
  coordinates = "org.apache.maven.shared:maven-invoker:jar:3.2.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-invoker";
  version = "3.2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-invoker/3.2.0/maven-invoker-3.2.0.jar";
      sha256 = "51cdc34d2092a47f394b31e0545858c022030b47fcf30de16389c15ce7afd17c";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-utils__jar__3_3_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-io__commons-io__jar__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-invoker__pom__3_2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
