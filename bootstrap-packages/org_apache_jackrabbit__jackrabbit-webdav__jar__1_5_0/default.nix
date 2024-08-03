{
  lib
, pkgs
, patchMavenJar
, org_apache_jackrabbit__jackrabbit-jcr-commons__jar__1_5_0
, org_slf4j__slf4j-api__jar__1_5_3
, commons-httpclient__commons-httpclient__jar__3_0
, commons-logging__commons-logging__jar__1_0_3
, commons-codec__commons-codec__jar__1_2
, org_apache_jackrabbit__jackrabbit-webdav__pom__1_5_0
}:
patchMavenJar {
  name = "org.apache.jackrabbit:jackrabbit-webdav:jar:1.5.0";
  groupId = "org.apache.jackrabbit";
  artifactId = "jackrabbit-webdav";
  version = "1.5.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/jackrabbit/jackrabbit-webdav/1.5.0/jackrabbit-webdav-1.5.0.jar";
      sha256 = "3a3110851517c8f62be7262716b08349b281e3fd15452c56b8a6dc4ca5696975";
    };
  };
  dependencies = [
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
      drv = commons-httpclient__commons-httpclient__jar__3_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-logging__commons-logging__jar__1_0_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-codec__commons-codec__jar__1_2;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-webdav__pom__1_5_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
