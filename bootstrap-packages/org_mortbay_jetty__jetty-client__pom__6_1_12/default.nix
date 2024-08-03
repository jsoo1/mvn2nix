{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-client:pom:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-client";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-client/6.1.12/jetty-client-6.1.12.pom";
      sha256 = "45fdab65d3165aa7ca9cd7f28c67a81c728f56ad885b78401f8d01f4aab63ae3";
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
