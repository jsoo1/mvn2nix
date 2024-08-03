{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty__jar__6_1_14
, org_mortbay_jetty__jetty-util__jar__6_1_14
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_14
, org_mortbay_jetty__jetty-sslengine__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-sslengine:jar:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-sslengine";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-sslengine/6.1.14/jetty-sslengine-6.1.14.jar";
      sha256 = "b8c903d24819ea4aa40769b4b640854803414f793bf4b6f149d10d7b9ac94395";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-util__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__servlet-api-2_5__jar__6_1_14;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_mortbay_jetty__jetty-sslengine__pom__6_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
