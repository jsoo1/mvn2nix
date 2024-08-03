{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-component-annotations__pom__2_0_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-component-annotations:jar:2.0.0";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-component-annotations";
  version = "2.0.0";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-component-annotations/2.0.0/plexus-component-annotations-2.0.0.jar";
      sha256 = "405eef6fc9188241ec88579c3e473f5c8997455c69bcd62e142492aca15106bc";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-component-annotations__pom__2_0_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
