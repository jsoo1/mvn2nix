{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty:pom:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty/6.1.14/jetty-6.1.14.pom";
      sha256 = "2d8364d50c4c9853b690d686750e4c9db462a10b7fadf3f44e974e2490ad1915";
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
