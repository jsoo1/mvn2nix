{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-utils:1.0.4";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-utils";
  version = "1.0.4";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.0.4/plexus-utils-1.0.4.jar";
        sha256 = "8c060125046528a08b5739d141c3c3f2032330ea07a92f72aac8f15a5bbdf39a";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-utils/1.0.4/plexus-utils-1.0.4.pom";
        sha256 = "36623a9539061d87f078af61ca62c3eacf422eb374641cf8903cdeb759671eb3";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
