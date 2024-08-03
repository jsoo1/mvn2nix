{
  lib
, pkgs
, patchMavenJar
, plexus__plexus-root__pom__1_0_3
}:
patchMavenJar {
  name = "plexus:plexus-containers:pom:1.0.2";
  groupId = "plexus";
  artifactId = "plexus-containers";
  version = "1.0.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/plexus/plexus-containers/1.0.2/plexus-containers-1.0.2.pom";
      sha256 = "131ed39a845f96761a46974a2d515235da6fa31eb78de8484466426a49504d16";
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
