{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-sslengine:pom:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-sslengine";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-sslengine/6.1.12/jetty-sslengine-6.1.12.pom";
      sha256 = "0a353bab0338086c48ef9934e26b727c01f67560753e5c5e42bc16f30e00d1fc";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__project__pom__6_1_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
