{
  lib
, pkgs
, patchMavenJar
, plexus__plexus-containers__pom__1_0_2
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-container-default:pom:1.0-alpha-7";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-container-default";
  version = "1.0-alpha-7";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-container-default/1.0-alpha-7/plexus-container-default-1.0-alpha-7.pom";
      sha256 = "39b2035b94953ac38162d6b671be1aac22e383f2e38354cc011b1b1e9b104d23";
    };
  };
  dependencies = [
    {
      drv = plexus__plexus-containers__pom__1_0_2;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
