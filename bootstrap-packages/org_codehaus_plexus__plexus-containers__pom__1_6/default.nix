{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.6";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.6";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.6/plexus-containers-1.6.pom";
      sha256 = "0829f2a50f20b098223d1f92c19badb0738267d953726ac56cac9f3c9c6fc9bb";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
