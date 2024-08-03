{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-sslengine__jar__6_1_12
, org_mortbay_jetty__jetty__jar__6_1_12
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_12
, org_mortbay_jetty__jetty-util__jar__6_1_12
, org_mortbay_jetty__jetty-client__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-client:jar:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-client";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-client/6.1.12/jetty-client-6.1.12.jar";
      sha256 = "fe49e66fdeb45a20ab94c6210752a6adfb3d8a20aa38c8a7af9d2a97f214df02";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty-sslengine__jar__6_1_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty__jar__6_1_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__servlet-api-2_5__jar__6_1_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-util__jar__6_1_12;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-client__pom__6_1_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
