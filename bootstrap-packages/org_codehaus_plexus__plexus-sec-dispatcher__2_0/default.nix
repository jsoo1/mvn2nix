{
  lib
, pkgs
, patchMavenJar
, javax_inject__javax_inject__1
, org_codehaus_plexus__plexus-utils__3_4_1
, org_codehaus_plexus__plexus__pom__8
, org_codehaus_plexus__plexus-cipher__2_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-sec-dispatcher:2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-sec-dispatcher";
  version = "2.0";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-sec-dispatcher/2.0/plexus-sec-dispatcher-2.0.jar";
        sha256 = "873139960c4c780176dda580b003a2c4bf82188bdce5bb99234e224ef7acfceb";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-sec-dispatcher/2.0/plexus-sec-dispatcher-2.0.pom";
        sha256 = "9b28bb307017938a94d06c85b2b099bc46912b859d084fb293e569f432eadb7c";
      };
    }
  ];
  dependencies = [
    {
      drv = javax_inject__javax_inject__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-utils__3_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus__pom__8;
      scope = "test";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__2_0;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
