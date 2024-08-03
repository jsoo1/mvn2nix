{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-parent__pom__7
}:
patchMavenJar {
  name = "org.mortbay.jetty:project:pom:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "project";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/project/6.1.12/project-6.1.12.pom";
      sha256 = "bfc8990a3594e74cef2348110b1ffaa6075191a8c95ea98868738c29101e611e";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty-parent__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
