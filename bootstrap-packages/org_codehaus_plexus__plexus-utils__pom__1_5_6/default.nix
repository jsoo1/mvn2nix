{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_12
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:1.5.6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.6/plexus-utils-1.5.6.pom";
      sha256 = "0d473f85e79ae843569b9302f634fc3f70bdf135200ab2a486770f57deddbf39";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_12;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
