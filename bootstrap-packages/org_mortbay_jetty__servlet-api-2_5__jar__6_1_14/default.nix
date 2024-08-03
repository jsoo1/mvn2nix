{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__servlet-api-2_5__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:servlet-api-2.5:jar:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "servlet-api-2.5";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/servlet-api-2.5/6.1.14/servlet-api-2.5-6.1.14.jar";
      sha256 = "0ed33ee3051866a3a6331976cdf5098a36aefd16ec1fa2d836eb067e37d46d47";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__servlet-api-2_5__pom__6_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
