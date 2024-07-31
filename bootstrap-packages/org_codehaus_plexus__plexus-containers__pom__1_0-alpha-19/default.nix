{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_10
, junit__junit__3_8_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.0-alpha-19";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.0-alpha-19";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.0-alpha-19/plexus-containers-1.0-alpha-19.pom";
        sha256 = "86e082c0a51b032652d379e8c7d96e655500a97877b31054133a4048bc0d8a5a";
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
