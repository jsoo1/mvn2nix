{
  lib
, pkgs
, patchMavenJar
, org_apache_geronimo_genesis__genesis-default-flava__pom__2_0
, org_apache_xbean__xbean__pom__3_7
, org_apache_geronimo_genesis__genesis-java5-flava__pom__2_0
, org_apache_geronimo_genesis__genesis__pom__2_0
, commons-logging__commons-logging-api__1_1
, org_apache__apache__pom__6
, log4j__log4j__1_2_12
}:
patchMavenJar {
  name = "org.apache.xbean:xbean-reflect:3.7";
  groupId = "org.apache.xbean";
  artifactId = "xbean-reflect";
  version = "3.7";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean-reflect/3.7/xbean-reflect-3.7.jar";
        sha256 = "104e5e9bb5a669f86722f32281960700f7ec8e3209ef51b23eb9b6d23d1629cb";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean-reflect/3.7/xbean-reflect-3.7.pom";
        sha256 = "9795c15322c5d19af336eebd9e164fa7d5897c4b004a7d66e21635a173e748a9";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_geronimo_genesis__genesis-default-flava__pom__2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_xbean__xbean__pom__3_7;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_geronimo_genesis__genesis-java5-flava__pom__2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache_geronimo_genesis__genesis__pom__2_0;
      scope = "test";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging-api__1_1;
      scope = "compile";
      optional = true;
    }
    {
      drv = org_apache__apache__pom__6;
      scope = "test";
      optional = false;
    }
    {
      drv = log4j__log4j__1_2_12;
      scope = "compile";
      optional = true;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
