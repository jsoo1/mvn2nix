{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__4_0
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-languages:pom:0.9.10";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-languages";
  version = "0.9.10";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-languages/0.9.10/plexus-languages-0.9.10.pom";
      sha256 = "863adcfb4eaec8286de72e606c9cb39d65b0473309c41a2e7d37983291a10ba3";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__4_0;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
