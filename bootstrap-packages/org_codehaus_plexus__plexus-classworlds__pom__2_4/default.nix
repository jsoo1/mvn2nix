{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__2_0_7
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:2.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.4/plexus-classworlds-2.4.pom";
      sha256 = "c0439c2b2d850488686143e2529f521b38f2abded6ac212add8f0c637eb912e9";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__2_0_7;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
