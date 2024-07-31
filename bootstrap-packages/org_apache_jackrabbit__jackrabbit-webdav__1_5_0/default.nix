{
  lib
, pkgs
, patchMavenJar
, org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0
, org_apache_jackrabbit__jackrabbit-parent__pom__1_5_0
, org_apache__apache__pom__4
, org_slf4j__slf4j-api__1_5_3
, commons-httpclient__commons-httpclient__3_0
, commons-codec__commons-codec__1_2
}:
patchMavenJar {
  name = "org.apache.jackrabbit:jackrabbit-webdav:1.5.0";
  groupId = "org.apache.jackrabbit";
  artifactId = "jackrabbit-webdav";
  version = "1.5.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/jackrabbit/jackrabbit-webdav/1.5.0/jackrabbit-webdav-1.5.0.jar";
        sha256 = "3a3110851517c8f62be7262716b08349b281e3fd15452c56b8a6dc4ca5696975";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/apache/jackrabbit/jackrabbit-webdav/1.5.0/jackrabbit-webdav-1.5.0.pom";
        sha256 = "632163c10e2ab324fa7772cc2bf42099f9f421bfba1b18f433dc62991644201f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_apache_jackrabbit__jackrabbit-jcr-commons__1_5_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_apache_jackrabbit__jackrabbit-parent__pom__1_5_0;
      scope = "test";
      optional = false;
    }
    {
      drv = org_apache__apache__pom__4;
      scope = "test";
      optional = false;
    }
    {
      drv = org_slf4j__slf4j-api__1_5_3;
      scope = "compile";
      optional = false;
    }
    {
      drv = commons-httpclient__commons-httpclient__3_0;
      scope = "compile";
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
