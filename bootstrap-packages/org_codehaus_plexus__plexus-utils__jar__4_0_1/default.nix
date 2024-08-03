{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-utils__pom__4_0_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:jar:4.0.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "4.0.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/4.0.1/plexus-utils-4.0.1.jar";
      sha256 = "96b9cc44439191d2d0635974e2d44e768736b4fb2abcb65f94cd95e41912fa8b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-utils__pom__4_0_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
