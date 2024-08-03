{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-sslengine__jar__6_1_14
, org_mortbay_jetty__jetty__jar__6_1_14
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_14
, org_mortbay_jetty__jetty-util__jar__6_1_14
, org_mortbay_jetty__jetty-client__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-client:jar:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-client";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-client/6.1.14/jetty-client-6.1.14.jar";
      sha256 = "f592e507e9ee0e89d4905b2039f645ea37e3f0c00156fb542826811cfeed41dd";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty-sslengine__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__servlet-api-2_5__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-util__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-client__pom__6_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
