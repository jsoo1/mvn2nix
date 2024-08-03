{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-util__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-util:jar:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-util";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-util/6.1.12/jetty-util-6.1.12.jar";
      sha256 = "c7f52dee8665c27dfbbb918546d0a1e4b2047491f246f52eb308db1ad88bd0b2";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty-util__pom__6_1_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
