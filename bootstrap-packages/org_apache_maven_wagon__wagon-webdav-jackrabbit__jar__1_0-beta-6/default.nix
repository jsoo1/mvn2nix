{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_wagon__wagon-http-shared__jar__1_0-beta-6
, nekohtml__xercesMinimal__jar__1_9_6_2
, nekohtml__nekohtml__jar__1_9_6_2
, commons-httpclient__commons-httpclient__jar__3_1
, commons-logging__commons-logging__jar__1_0_4
, commons-codec__commons-codec__jar__1_2
, org_apache_jackrabbit__jackrabbit-webdav__jar__1_5_0
, org_apache_jackrabbit__jackrabbit-jcr-commons__jar__1_5_0
, org_slf4j__slf4j-api__jar__1_5_3
, org_slf4j__slf4j-nop__jar__1_5_3
, org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6
, org_codehaus_plexus__plexus-utils__jar__1_4_2
, org_apache_maven_wagon__wagon-webdav-jackrabbit__pom__1_0-beta-6
}:
patchMavenJar {
  name = "org.apache.maven.wagon:wagon-webdav-jackrabbit:jar:1.0-beta-6";
  groupId = "org.apache.maven.wagon";
  artifactId = "wagon-webdav-jackrabbit";
  version = "1.0-beta-6";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/wagon/wagon-webdav-jackrabbit/1.0-beta-6/wagon-webdav-jackrabbit-1.0-beta-6.jar";
      sha256 = "1337191fadb43c336dafc4537116b400800ad1a8e4b3a3ef945a16b640f242db";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_wagon__wagon-http-shared__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__xercesMinimal__jar__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = nekohtml__nekohtml__jar__1_9_6_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__jar__3_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-webdav__jar__1_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-jcr-commons__jar__1_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__jar__1_5_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-nop__jar__1_5_3;
      scope = "runtime";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-provider-api__jar__1_0-beta-6;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_4_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_wagon__wagon-webdav-jackrabbit__pom__1_0-beta-6;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
