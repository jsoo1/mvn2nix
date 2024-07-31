{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.0-alpha-20";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.0-alpha-20";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.0-alpha-20/plexus-containers-1.0-alpha-20.pom";
        sha256 = "3e48e181d5efa33edb06aaa14b9af5ed2a7582e87963f87602cfdad8fa659bb4";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_10;
      scope = "test";
      optional = false;
    }
    {
      drv = junit__junit__3_8_1;
      scope = "compile";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
