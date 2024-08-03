{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interactivity-api:pom:1.0-alpha-4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interactivity-api";
  version = "1.0-alpha-4";
  classifier = null;
  artifact = {
    extension = "pom";
    drv = pkgs.fetchurl {
      url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interactivity-api/1.0-alpha-4/plexus-interactivity-api-1.0-alpha-4.pom";
      sha256 = "42aada809ec125bbfe4d38f9d196bbeb59f298b389df96e610269e369b8eb2c9";
    };
  };
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
