{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__project__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-util:pom:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-util";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-util/6.1.14/jetty-util-6.1.14.pom";
      sha256 = "875211fcf33eefb717fbff78baa1a60be5c973fe206cff47b2195c50337d8584";
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
