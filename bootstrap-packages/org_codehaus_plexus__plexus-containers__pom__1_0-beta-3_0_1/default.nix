{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.0-beta-3.0.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.0-beta-3.0.1";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.0-beta-3.0.1/plexus-containers-1.0-beta-3.0.1.pom";
      sha256 = "7dbfc1624fdc4730bb284b648cc98038f54830ed488eb4ae225619173a3fadd0";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
