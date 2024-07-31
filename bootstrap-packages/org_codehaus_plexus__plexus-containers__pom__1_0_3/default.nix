{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__1_0_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.0.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.0.3";
  classifier = null;
  artifacts = [
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.0.3/plexus-containers-1.0.3.pom";
        sha256 = "7c75075badcb014443ee94c8c4cad2f4a9905be3ce9430fe7b220afc7fa3a80f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__1_0_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
