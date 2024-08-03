{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__1_4
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:1.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.4";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.4/plexus-classworlds-1.4.jar";
      sha256 = "bddfb1797874e3940b81bf0e238f9e69f74a08d25cde7cc8ddc56bc44aafefed";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__1_4;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
