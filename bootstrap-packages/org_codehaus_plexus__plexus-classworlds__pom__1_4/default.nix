{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:1.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.4/plexus-classworlds-1.4.pom";
      sha256 = "287bbac3386e00e5e02629627c1153158ea044f4335e0bf38126b866ce037190";
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
