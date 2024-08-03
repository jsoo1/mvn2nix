{
  lib
, pkgs
, patchMavenJar
, org_mortbay_jetty__jetty-parent__pom__7
}:
patchMavenJar {
  name = "org.mortbay.jetty:project:pom:6.1.14";
  groupId = "org.mortbay.jetty";
  artifactId = "project";
  version = "6.1.14";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/mortbay/jetty/project/6.1.14/project-6.1.14.pom";
      sha256 = "dcb79fca0b2b3931abd3f5b02582c5d23c9ebbd2e7a0dd8c93efe3d1ad3efa5e";
    };
  };
  dependencies = [
    {
      drv = org_mortbay_jetty__jetty-parent__pom__7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
