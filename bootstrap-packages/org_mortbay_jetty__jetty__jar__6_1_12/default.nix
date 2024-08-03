{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-util__jar__6_1_12
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_12
, org_mortbay_jetty__jetty__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty:jar:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty/6.1.12/jetty-6.1.12.jar";
      sha256 = "09f1dcfcd4d4bbd66110ef22ae48ce3cde198e92c6073b44cf19c3713a618304";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty-util__jar__6_1_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__servlet-api-2_5__jar__6_1_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty__pom__6_1_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
