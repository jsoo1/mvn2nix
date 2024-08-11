{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__6_5
}:
patchMavenJar {
  name = "plexus-components";
  coordinates = "org.codehaus.plexus:plexus-components:pom:6.5";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-components";
  version = "6.5";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-components/6.5/plexus-components-6.5.pom";
      sha256 = "c616f9be007c09888f66985b6dc982087220efbb930e7957edcba4f875429430";
    };
  };
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__6_5;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
