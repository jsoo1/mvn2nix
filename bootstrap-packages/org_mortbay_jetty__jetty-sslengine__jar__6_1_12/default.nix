{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty__jar__6_1_12
, org_mortbay_jetty__jetty-util__jar__6_1_12
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_12
, org_mortbay_jetty__jetty-sslengine__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-sslengine:jar:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-sslengine";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-sslengine/6.1.12/jetty-sslengine-6.1.12.jar";
      sha256 = "3a9675ab49a42454ed1ba75bb936e3461412b6cfac57fd7ef1aa317788655553";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty__jar__6_1_12;
      scope = "compile";
      optional = false;
    }
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
      drv = org_mortbay_jetty__jetty-sslengine__pom__6_1_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
