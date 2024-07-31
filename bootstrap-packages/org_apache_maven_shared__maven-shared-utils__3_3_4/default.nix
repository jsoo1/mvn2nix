{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_shared__maven-shared-components__pom__34
, org_apache_maven__maven-parent__pom__34
, org_fusesource_jansi__jansi__2_2_0
, commons-io__commons-io__2_6
, org_apache__apache__pom__23
}:
patchMavenJar {
  name = "org.apache.maven.shared:maven-shared-utils:3.3.4";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.3.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.3.4/maven-shared-utils-3.3.4.jar";
        sha256 = "7925d9c5a0e2040d24b8fae3f612eb399cbffe5838b33ba368777dc7bddf6dda";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.3.4/maven-shared-utils-3.3.4.pom";
        sha256 = "bf83482d96f76d63699d63e125e64f4ac73c8178985733662dbd69af9c60339e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_shared__maven-shared-components__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__34;
      scope = "test";
      optional = false;
    }
    {
      drv = org_fusesource_jansi__jansi__2_2_0;
      scope = "compile";
      optional = true;
    }
    {
      drv = commons-io__commons-io__2_6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__23;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
