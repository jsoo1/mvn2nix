{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-containers:pom:1.0-beta-3.0.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-containers";
  version = "1.0-beta-3.0.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-containers/1.0-beta-3.0.5/plexus-containers-1.0-beta-3.0.5.pom";
      sha256 = "f53a82db260a2910a9823d6e72a927891daae33d8eb6884ab838a2a2768c6b86";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
