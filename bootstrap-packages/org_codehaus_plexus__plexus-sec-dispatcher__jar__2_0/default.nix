{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__jar__3_4_1
, org_codehaus_plexus__plexus-cipher__jar__2_0
, javax_inject__javax_inject__jar__1
, org_codehaus_plexus__plexus-sec-dispatcher__pom__2_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-sec-dispatcher:jar:2.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-sec-dispatcher";
  version = "2.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-sec-dispatcher/2.0/plexus-sec-dispatcher-2.0.jar";
      sha256 = "873139960c4c780176dda580b003a2c4bf82188bdce5bb99234e224ef7acfceb";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__jar__3_4_1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-cipher__jar__2_0;
      scope = "compile";
      optional = false;
    }
    {
      drv = javax_inject__javax_inject__jar__1;
      scope = "compile";
      optional = false;
    }
    {
      drv = org_codehaus_plexus__plexus-sec-dispatcher__pom__2_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
