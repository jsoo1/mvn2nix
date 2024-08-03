{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__8
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:pom:3.4.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "3.4.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/3.4.2/plexus-utils-3.4.2.pom";
      sha256 = "0515626f5abaa0bdb5ad87d291953eae358b97e2d10d6ecab84aca0d486063bf";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__8;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
