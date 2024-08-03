{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__2_2_3
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:2.2.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.2.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.2.3/plexus-classworlds-2.2.3.jar";
      sha256 = "7d95ad21733b060bfda2142b62439a196bde7644f9f127c299ae86d92179b518";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__2_2_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
