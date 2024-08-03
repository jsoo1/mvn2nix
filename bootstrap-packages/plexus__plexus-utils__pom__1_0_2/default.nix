{
  lib
, pkgs
, patchMavenJar
, plexus__plexus-root__pom__1_0_3
}:
patchMavenJar {
  name = "plexus:plexus-utils:pom:1.0.2";
  groupId = "plexus";
  artifactId = "plexus-utils";
  version = "1.0.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/plexus/plexus-utils/1.0.2/plexus-utils-1.0.2.pom";
      sha256 = "55e55cf810205c43996609a89ae14e0979ec9ccd0fad21cee7dcd6112bf139b3";
    };
  };
  dependencies = [
    {
      drv = plexus__plexus-root__pom__1_0_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
