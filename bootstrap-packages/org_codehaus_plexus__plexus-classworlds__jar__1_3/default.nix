{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus-classworlds__pom__1_3
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:jar:1.3";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "1.3";
  classifier = null;
  artifact = {
    extension = "jar";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/1.3/plexus-classworlds-1.3.jar";
      sha256 = "8f4446a70f5fafdba46645d1807152f45b0703ec755ac81b056b7b40a491bf98";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus-classworlds__pom__1_3;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
