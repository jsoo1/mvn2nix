{
  lib
, pkgs
, patchMavenJar
, org_codehaus_plexus__plexus__pom__5_1
}:
patchMavenJar {
  name = "org.codehaus.plexus:plexus-interpolation:1.25";
  groupId = "org.codehaus.plexus";
  artifactId = "plexus-interpolation";
  version = "1.25";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.25/plexus-interpolation-1.25.jar";
        sha256 = "e003802501574637f7abdc4e83e6d509a31e9ff825d12da6d1e419acf9688705";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/org/codehaus/plexus/plexus-interpolation/1.25/plexus-interpolation-1.25.pom";
        sha256 = "9eb551c0ca3ec1354f10bbc5a037a89809d4e32bac9f55a4431e4be0eb8f0d8f";
      };
    }
  ];
  dependencies = [
    {
      drv = org_codehaus_plexus__plexus__pom__5_1;
      scope = "test";
      optional = false;
    }
  ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
