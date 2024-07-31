{
  lib
, pkgs
, patchMavenJar
, org_hamcrest__hamcrest-parent__pom__1_1
}:
patchMavenJar {
  name = "org.hamcrest:hamcrest-core:1.1";
  groupId = "org.hamcrest";
  artifactId = "hamcrest-core";
  version = "1.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/hamcrest/hamcrest-core/1.1/hamcrest-core-1.1.jar";
        sha256 = "0361d1493ff0d94f861359efea91200720635072134792efb7217f6e09d5cffb";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/hamcrest/hamcrest-core/1.1/hamcrest-core-1.1.pom";
        sha256 = "397387f406c68ccb403f477ccbec1c818cfc6b8ff4fada5a33e26183a8417c83";
      };
    }
  ];
  dependencies = [
    {
      drv = org_hamcrest__hamcrest-parent__pom__1_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
