{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-util__pom__6_1_14
}:
patchMavenJar {
  name = "org.mortbay.jetty:jetty-util:jar:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "jetty-util";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/jetty-util/6.1.14/jetty-util-6.1.14.jar";
      sha256 = "f26639fd1ecfd83a66f9d8a593242fa5abd75bb4764cfdac88b4079a93fe32f9";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty-util__pom__6_1_14;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
