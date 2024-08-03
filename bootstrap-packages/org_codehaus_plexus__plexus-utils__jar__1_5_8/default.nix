{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_5_8
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.5.8";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.5.8";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.5.8/plexus-utils-1.5.8.jar";
      sha256 = "b7554a41499282e3b2226a22aff3ebe984f7e159798c461d917c1b829b130cd1";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_5_8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
