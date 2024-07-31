{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__1_0-beta-6
, commons-logging__commons-logging__1_0_4
, commons-httpclient__commons-httpclient__3_1
, nekohtml__nekohtml__1_9_6_2
, org_apache_maven_wagon__wagon-provider-api__1_0-beta-6
, nekohtml__xercesMinimal__1_9_6_2
, org_codehaus_plexus__plexus-utils__1_4_2
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
, org_apache__apache__pom__5
, org_apache_maven__maven-parent__pom__11
, commons-codec__commons-codec__1_2
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-http-shared:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-http-shared";
  version = "1.0-beta-6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-http-shared/1.0-beta-6/wagon-http-shared-1.0-beta-6.jar";
        sha256 = "f095c882716d49269a806685dcb256fa6a36389b2713ac56bb758bf8693565a2";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-http-shared/1.0-beta-6/wagon-http-shared-1.0-beta-6.pom";
        sha256 = "f6775dc981540ffa10f33bd831f14608517ce38b90628e045707dd5bb5d1348e";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__nekohtml__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__xercesMinimal__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_2;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
