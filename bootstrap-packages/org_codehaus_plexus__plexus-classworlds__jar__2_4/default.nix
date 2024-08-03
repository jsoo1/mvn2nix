{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__2_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:2.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.4/plexus-classworlds-2.4.jar";
      sha256 = "259d528a29722cab6349d7e7d432e3fd4877c087ffcb04985a6612e97023bba8";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__2_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
