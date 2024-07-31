{
  lib
, pkgs
, patchMavenJar
, org_apache_maven__maven-parent__pom__30
, commons-io__commons-io__2_5
, org_apache__apache__pom__18
, org_apache_maven_shared__maven-shared-components__pom__30
, org_fusesource_jansi__jansi__1_13
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:3.2.1";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.2.1/maven-shared-utils-3.2.1.jar";
        sha256 = "3ba9c619893c767db0f9c3e826d5118b57c35229301bcd16d865a89cec16a7e5";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.2.1/maven-shared-utils-3.2.1.pom";
        sha256 = "ebfec96908fd4ff54d29df33e5b0d8ddd113272dc5c1c34402de8ea8a9f7bf66";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven__maven-parent__pom__30;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-io__commons-io__2_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__18;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__30;
      scope = "test";
      optional = false;
    }
    {
      drv = org_fusesource_jansi__jansi__1_13;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
