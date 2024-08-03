{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-sslengine:pom:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-sslengine";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-sslengine/6.1.14/jetty-sslengine-6.1.14.pom";
      sha256 = "70bc56ceb0f9b3be66e3d896cbb76126f5deeef8f95410185fa589dd4e8572e9";
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
