{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__3_3_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-classworlds:pom:2.5.2";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-classworlds";
  version = "2.5.2";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-classworlds/2.5.2/plexus-classworlds-2.5.2.pom";
      sha256 = "89811897b815beefa094c39b4603e3f60c42276a2cd5d80b924ab19183629925";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__3_3_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
