{
  lib
, pkgs
, patchMavenJar
, plexus__plexus-utils__pom__1_0_2
}:
patchMavenJar {
  name = "plexus:plexus-utils:jar:1.0.2";
  groupId = "plexus";
  artifactId = "plexus-utils";
  version = "1.0.2";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/plexus/plexus-utils/1.0.2/plexus-utils-1.0.2.jar";
      sha256 = "56ffe79b4426ce24ea35f1ab5af3dfd324a749b0d5812a6f6fec913c3b5e7a0d";
    };
  };
  dependencies = [
    {
      drv = plexus__plexus-utils__pom__1_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
