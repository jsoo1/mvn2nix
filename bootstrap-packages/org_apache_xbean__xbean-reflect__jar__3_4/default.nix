{
  lib
, pkgs
, patchMavenJar
, log4j__log4j__jar__1_2_12
, commons-logging__commons-logging-api__jar__1_1
, org_apache_xbean__xbean-reflect__pom__3_4
}:
patchMavenJar {
  name = "org.apache.xbean:xbean-reflect:jar:3.4";
  groupId = "org.apache.xbean";
  artifactId = "xbean-reflect";
  version = "3.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/apache/xbean/xbean-reflect/3.4/xbean-reflect-3.4.jar";
      sha256 = "17e0efa187127034623197fb88c50c30d3baa62baa0f07d6ec693047ac92ec3b";
    };
  };
  dependencies = [
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
      drv = org_apache_xbean__xbean-reflect__pom__3_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
