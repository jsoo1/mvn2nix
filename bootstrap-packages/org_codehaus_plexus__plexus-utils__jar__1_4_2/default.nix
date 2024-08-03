{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__1_4_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:1.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.4.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.4.2/plexus-utils-1.4.2.jar";
      sha256 = "6ba8c1c0a075a37d812c581ede2e12d8f890b8d3b4676721f1b7257c91cb71a3";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__1_4_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
