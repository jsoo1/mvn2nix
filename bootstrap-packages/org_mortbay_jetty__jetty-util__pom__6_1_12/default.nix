{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_12
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-util:pom:6.1.12";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-util";
  version = "6.1.12";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-util/6.1.12/jetty-util-6.1.12.pom";
      sha256 = "e8c95a52e9841790697def00204f96b7da86648f19b938fa89bc9771e1fd4c3d";
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
