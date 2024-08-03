{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:servlet-api-2.5:pom:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "servlet-api-2.5";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/servlet-api-2.5/6.1.12/servlet-api-2.5-6.1.12.pom";
      sha256 = "fe498552c72fcd01448ea9cf3db6049e36c9d6d687a69a02948236deaeafc925";
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
