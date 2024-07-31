{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon__pom__1_0-beta-6
, commons-httpclient__commons-httpclient__3_1
, org_apache_maven_wagon__wagon-provider-api__1_0-beta-6
, nekohtml__xercesMinimal__1_9_6_2
, org_codehaus_plexus__plexus-utils__1_4_2
, org_apache_maven_wagon__wagon-providers__pom__1_0-beta-6
, org_apache_maven__maven-parent__pom__11
, org_slf4j__slf4j-api__1_5_3
, commons-codec__commons-codec__1_2
, org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0
, org_apache_maven_wagon__wagon-http-shared__1_0-beta-6
, nekohtml__nekohtml__1_9_6_2
, org_slf4j__slf4j-nop__1_5_3
, org_apache__apache__pom__5
, org_apache_jackrabbit__jackrabbit-webdav__1_5_0
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-webdav-jackrabbit:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-webdav-jackrabbit";
  version = "1.0-beta-6";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-webdav-jackrabbit/1.0-beta-6/wagon-webdav-jackrabbit-1.0-beta-6.jar";
        sha256 = "1337191fadb43c336dafc4537116b400800ad1a8e4b3a3ef945a16b640f242db";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-webdav-jackrabbit/1.0-beta-6/wagon-webdav-jackrabbit-1.0-beta-6.pom";
        sha256 = "efb732539f6f5314ba05aa2d2c10f40146e50f8a2fbc6261722f566cab47bcaa";
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
      drv = org_apache_maven__maven-parent__pom__11;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_5_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0;
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
      drv = org_slf4j__slf4j-nop__1_5_3;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__5;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-webdav__1_5_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
