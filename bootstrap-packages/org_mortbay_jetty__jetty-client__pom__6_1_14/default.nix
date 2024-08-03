{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-client:pom:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-client";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-client/6.1.14/jetty-client-6.1.14.pom";
      sha256 = "99a787e38d43189f3629a720466f9a95d933bdfdd24a53c5945c30d66e6c86ab";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__project__pom__6_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
