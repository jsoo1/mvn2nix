{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty:pom:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty/6.1.12/jetty-6.1.12.pom";
      sha256 = "a7801b8ffb2cf57720ca574dd8dee1ce6ae0347c76d481d9449be645bbedfa36";
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
