{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__1_0-beta-6
, commons-httpclient__commons-httpclient__3_1
, org_apache_maven_wagon__wagon-http-shared__1_0-beta-6
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
  name = "org.apache.maven.wagon:wagon-http:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-http";
  version = "1.0-beta-6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-http/1.0-beta-6/wagon-http-1.0-beta-6.jar";
        sha256 = "98376024764658eb65e252ff2a690d9773032cafc4cc8bbb7558d0ba1c5435f4";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-http/1.0-beta-6/wagon-http-1.0-beta-6.pom";
        sha256 = "4d4854c99ae1694af8290c6e6bdc5989ccb846f69931261b89a1aa7c2b74ed93";
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
      drv = commons-httpclient__commons-httpclient__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-http-shared__1_0-beta-6;
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
