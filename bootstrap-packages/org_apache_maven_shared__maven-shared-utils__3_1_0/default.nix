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
  name = "org.apache.maven.shared:maven-shared-utils:3.1.0";
  groupId = "org.apache.maven.shared";
  artifactId = "maven-shared-utils";
  version = "3.1.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.1.0/maven-shared-utils-3.1.0.jar";
        sha256 = "88e5334c4c29a6e81c74a1d814c54a9a3b1e4fc6560a95da196fe16928095471";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/shared/maven-shared-utils/3.1.0/maven-shared-utils-3.1.0.pom";
        sha256 = "68f9fdef85d2c89f53c63cbc559920e0115bd30eb6f7076c9854931d3829027b";
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
