{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__2_8_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:2.8.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.8.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.8.0/plexus-classworlds-2.8.0.jar";
      sha256 = "081b40e0eab033cd5ac72d2501bfff4f5fd2a3eef827051111730ea152681c72";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__2_8_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
