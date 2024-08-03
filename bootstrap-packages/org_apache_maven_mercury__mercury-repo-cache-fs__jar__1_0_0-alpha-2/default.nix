{
  lib
, pkgs
, patchMavenJar
, org_apache_maven_mercury__mercury-repo-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-artifact__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-transport-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-crypto-api__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-external__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-event__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-md-shared__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-util__jar__1_0_0-alpha-2
, org_apache_maven_mercury__mercury-crypto-basic__jar__1_0_0-alpha-2
, bouncycastle__bcprov-jdk15__jar__140
, bouncycastle__bcpg-jdk15__jar__140
, commons-cli__commons-cli__jar__1_1
, org_apache_maven_mercury__mercury-logging__jar__1_0_0-alpha-2
, org_codehaus_plexus__plexus-lang__jar__1_1
, org_codehaus_plexus__plexus-utils__jar__1_5_5
, org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_1
, org_codehaus_plexus__plexus-classworlds__jar__1_3
, org_apache_xbean__xbean-reflect__jar__3_4
, log4j__log4j__jar__1_2_12
, commons-logging__commons-logging-api__jar__1_1
, com_google_code_google-collections__google-collect__jar__snapshot-20080530
, junit__junit__jar__3_8_1
, org_apache_maven_mercury__mercury-repo-cache-fs__pom__1_0_0-alpha-2
}:
patchMavenJar {
  name = "org.apache.maven.mercury:mercury-repo-cache-fs:jar:1.0.0-alpha-2";
  groupId = "org.apache.maven.mercury";
  artifactId = "mercury-repo-cache-fs";
  version = "1.0.0-alpha-2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/maven/mercury/mercury-repo-cache-fs/1.0.0-alpha-2/mercury-repo-cache-fs-1.0.0-alpha-2.jar";
      sha256 = "374c2bcf375e2c86a59f4af58258fcf4d7f689ed2dfc00db4758196c4ad72480";
    };
  };
  dependencies = [
    {
      drv = org_apache_maven_mercury__mercury-repo-api__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-artifact__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-transport-api__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-crypto-api__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-external__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-event__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-md-shared__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-util__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-crypto-basic__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = bouncycastle__bcprov-jdk15__jar__140;
      scope = "compile";
      optional = false;
    }
    {
      drv = bouncycastle__bcpg-jdk15__jar__140;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-cli__commons-cli__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-logging__jar__1_0_0-alpha-2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-lang__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__jar__1_5_5;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-container-default__jar__1_0-beta-3_0_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-classworlds__jar__1_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean-reflect__jar__3_4;
      scope = "compile";
      optional = false;
    }
    {
      drv = log4j__log4j__jar__1_2_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging-api__jar__1_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = com_google_code_google-collections__google-collect__jar__snapshot-20080530;
      scope = "compile";
      optional = false;
    }
    {
      drv = junit__junit__jar__3_8_1;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_maven_mercury__mercury-repo-cache-fs__pom__1_0_0-alpha-2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
