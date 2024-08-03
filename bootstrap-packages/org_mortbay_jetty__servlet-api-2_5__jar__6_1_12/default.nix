{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__servlet-api-2_5__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:servlet-api-2.5:jar:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "servlet-api-2.5";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/servlet-api-2.5/6.1.12/servlet-api-2.5-6.1.12.jar";
      sha256 = "eb68ff8e5b2e78d9489c7a8ba96de40504d3123f03b0e4def24a97db237d0fa3";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__servlet-api-2_5__pom__6_1_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
