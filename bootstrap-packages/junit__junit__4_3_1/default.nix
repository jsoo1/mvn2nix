{
  lib
, pkgs
, patchMavenJar
}:
patchMavenJar {
  name = "junit:junit:4.3.1";
  groupId = "junit";
  artifactId = "junit";
  version = "4.3.1";
  classifier = null;
  artifacts = [
    {
      extension = "jar";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.3.1/junit-4.3.1.jar";
        sha256 = "30aef97fa5b3c6602a057b2a29b650be0ce7a075df082f9068c55debd034a8a8";
      };
    }
    {
      extension = "pom";
      drv = pkgs.fetchurl {
        url = "https://repo.maven.apache.org/maven2/junit/junit/4.3.1/junit-4.3.1.pom";
        sha256 = "2b3f8f9f5380a218f402ca3b6034c50e65377776d3ed71ce74e65b468012e706";
      };
    }
  ];
  dependencies = [ ];
  meta.sourceProvenance = [
    lib.sourceTypes.binaryBytecode
  ];
}
