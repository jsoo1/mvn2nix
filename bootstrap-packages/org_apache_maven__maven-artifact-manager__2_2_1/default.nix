{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1
, classworlds__classworlds__1_1
, org_apache_maven__maven__pom__2_2_1
, org_apache_maven__maven-artifact__2_2_1
, org_apache_maven_wagon__wagon-provider-api__1_0-beta-6
, org_apache__apache__pom__5
, org_codehaus_plexus__plexus-utils__1_5_15
, backport-util-concurrent__backport-util-concurrent__3_1
, org_apache_maven__maven-repository-metadata__2_2_1
, org_apache_maven__maven-parent__pom__11
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.apache.maven:maven-artifact-manager:2.2.1";
  groupId = "org.apache.maven";
  artifactId = "maven-artifact-manager";
  version = "2.2.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact-manager/2.2.1/maven-artifact-manager-2.2.1.jar";
        sha256 = "d1e247c4ed3952385fd704ac9db2a222247cfe7d20508b4f3c76b90f857952ed";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/maven-artifact-manager/2.2.1/maven-artifact-manager-2.2.1.pom";
        sha256 = "ecf58351f8fe0c398b8b452216705bece5291b9b327d30202c16b28ac680450c";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-container-default__1_0-alpha-9-stable-1;
      scope = "compile";
      optional = false;
    }
    {
      drv = classworlds__classworlds__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven__pom__2_2_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-artifact__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_5_15;
      scope = "compile";
      optional = false;
    }
    {
      drv = backport-util-concurrent__backport-util-concurrent__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-repository-metadata__2_2_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = junit__junit__3_8_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
