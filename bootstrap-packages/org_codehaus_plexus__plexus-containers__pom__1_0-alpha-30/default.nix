{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_11
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.0-alpha-30";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.0-alpha-30";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.0-alpha-30/plexus-containers-1.0-alpha-30.pom";
      sha256 = "74b039c9d08454c6abcf2f2581e0cfddfabd01360480876039c8de5104878d3b";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_11;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
