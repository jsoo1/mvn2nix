{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__2_5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:2.5.1";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.5.1";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.5.1/plexus-classworlds-2.5.1.jar";
      sha256 = "de9ce33b29088c2db7c3f55ddc061c2a7a72f9c93c28faad62cc15aee26b6888";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__2_5_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
