{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-util__jar__6_1_14
, org_mortbay_jetty__servlet-api-2_5__jar__6_1_14
, org_mortbay_jetty__jetty__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty:jar:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty/6.1.14/jetty-6.1.14.jar";
      sha256 = "23019570a88cde57f7cf9ef662e56f66cb179dcf7e28cbe0d1629e764d08c343";
    };
  };
  dependencies = [
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
      drv = org_mortbay_jetty__jetty__pom__6_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
